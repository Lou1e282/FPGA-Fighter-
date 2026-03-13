# FPGA Fighter 🎮

> A Street Fighter-inspired 2-player fighting game built on the Nexys 7 FPGA platform using Verilog, VGA display, and state machine-based game logic.

![Game Over Screen](docs/gameover.png)

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Module Breakdown](#module-breakdown)
- [How It Works](#how-it-works)
- [Hardware Requirements](#hardware-requirements)
- [Build & Run](#build--run)
- [Testing & Verification](#testing--verification)
- [Challenges & Solutions](#challenges--solutions)
- [Future Work](#future-work)
- [Author](#author)

---

## Overview

This project implements a real-time 2-player fighting game on an FPGA, rendered through VGA output at 640×480 resolution. Players control characters that can move, jump, and attack, with sprite-based animations driven from BRAM. The game logic is entirely hardware-based, using hierarchical state machines and a centralized game resolver for hit detection and state arbitration.

## Features

- **2-Player Local Multiplayer** — Two players fight in real time with independent controls
- **Sprite Animation System** — Frame-by-frame character animations stored in BRAM (`.mem` format)
- **Hitbox / Hurtbox Combat** — Overlap-based hit detection with configurable attack windows
- **Gravity & Jump Physics** — Hardcoded parabolic jump trajectories with directional air control
- **HP Tracking & Game Over** — Health bars and win/lose conditions with on-screen display
- **External Controller Support** — Custom-built external controller for Player 2
- **VGA 640×480 Output** — Full-screen game rendering with background and UI elements

## Architecture

The system is built around a clean separation of concerns:

```
┌─────────────────────────────────────────────────┐
│                  Top Module                      │
│              (top_twoplayers.v)                  │
│                                                  │
│  ┌──────────┐  ┌──────────┐                     │
│  │ Player 1 │  │ Player 2 │   Input / Debounce  │
│  │  Inputs  │  │  Inputs  │                     │
│  └────┬─────┘  └────┬─────┘                     │
│       │              │                           │
│  ┌────▼─────┐  ┌────▼─────┐                     │
│  │ pm1:     │  │ pm2:     │   Movement / Jump    │
│  │ player   │  │ player   │                     │
│  │ _move    │  │ _move    │                     │
│  └────┬─────┘  └────┬─────┘                     │
│       │              │                           │
│  ┌────▼─────┐  ┌────▼─────┐                     │
│  │ p1atk:   │  │ p2atk:   │   Attack Logic      │
│  │ player   │  │ player   │                     │
│  │ _attack  │  │ _attack  │                     │
│  └────┬─────┘  └────┬─────┘                     │
│       │              │                           │
│       └──────┬───────┘                           │
│              │                                   │
│     ┌────────▼─────────┐                         │
│     │  game_resolver   │  Hitbox/Hurtbox Check   │
│     │  HP, Hit Events  │  State Arbitration      │
│     └────────┬─────────┘                         │
│              │                                   │
│     ┌────────▼─────────┐                         │
│     │   hp_tracker     │  Health Point Tracking   │
│     └────────┬─────────┘                         │
│              │                                   │
│  ┌───────────▼────────────────────────────────┐  │
│  │          VGA Display Pipeline              │  │
│  │  vga_640x480 → sprite_mapper → state_anim │  │
│  │  + background + hitbox debug + game_over   │  │
│  └────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────┘
```

### State Priority Hierarchy

The game enforces a strict state priority for each player:

```
HIT > ATTACK > MOVE > IDLE
```

This hierarchy governs both gameplay logic and animation selection — a player taking a hit will always override their attack or movement state.

### Player State Machine

```
         ┌───────────┐
         │   Ready   │
         └─────┬─────┘
               │
         ┌─────▼─────┐
    ┌────│   Idle    │────┐
    │    └─────┬─────┘    │
    │ Move     │    Attack│
    │          │          │
┌───▼───┐     │    ┌─────▼─────┐
│ Move  │     │    │  Attack   │
└───┬───┘     │    └─────┬─────┘
    │         │          │
    │    ┌────▼────┐     │
    └───►│   Hit   │◄────┘
         └────┬────┘
              │ HP emptied
        ┌─────▼─────┐
        │ Win / Lose│
        └───────────┘
```

## Module Breakdown

| Module | File | Description |
|---|---|---|
| **Top Design** | `top_twoplayers.v` | Top-level module wiring all submodules, VGA background, debug overlays |
| **Movement** | `player_move.v` | X-axis movement (left/right), jump physics with gravity, position clamping, spawn position |
| **Attack** | `player_attack.v` | Attack signal generation with `attack_active` / `attack_damage` split and pre-attack delay (4+10+4 frames) |
| **Game Resolver** | `game_resolver.v` | Hitbox-hurtbox overlap detection, hit event handling, state arbitration |
| **HP Tracker** | `hp_tracker.v` | Health point management per player |
| **VGA Driver** | `vga_640x480.v` | Standard 640×480 VGA timing and signal generation |
| **Sprite Mapper** | `player_sprite_mapper.v` | Maps ROM/BRAM data to sprite frames based on current state and animation frame index |
| **State Animation** | `player_state_anim.v` | Translates player state signals into animation frame sequences |
| **Game Over Text** | `game_over_text.v` | Renders win/lose text overlay |

## How It Works

### Movement & Jumping

- **Left / Right**: Controlled via buttons; X-position updated each frame at a configurable `SPEED`
- **Jump**: Button-up triggers a hardcoded Y-position trajectory (parabolic arc), with X-axis locked at takeoff direction
- **Position Clamping**: Players are clamped within `MIN_X` and `MAX_X` boundaries

### Combat

- **Attacks** are triggered by button-down and split into two phases:
  - `attack_active` — triggers the attack animation immediately
  - `attack_damage` — delayed signal (4+10+4 frame window) that sends actual damage to the game resolver
- **Hit Detection**: The `game_resolver` checks for hitbox/hurtbox overlap between players each frame
- **Hitstun**: On hit, the defending player enters a `HIT` state with an action lock period

### Sprite Animation

- All sprite frames are stored as `.mem` files loaded into BRAM (44 memory files total)
- Each sprite is exactly **126×126 pixels** (12-bit color)
- `player_sprite_mapper` reads the correct BRAM address based on current state + frame index
- `player_state_anim` sequences through frames based on state transitions

## Hardware Requirements

- **FPGA Board**: Nexys 7 (Xilinx Artix-7)
- **Display**: VGA monitor (640×480 @ 60Hz)
- **Input**: On-board buttons (Player 1) + custom external controller (Player 2)
- **Toolchain**: Xilinx Vivado

## Build & Run

1. Clone the repository:
   ```bash
   git clone https://github.com/Lou1e282/FPGA-Fighter-.git
   cd FPGA-Fighter-
   ```

2. Open the project in **Vivado** and add all `.v` source files and `.mem` memory files.

3. Set `top_twoplayers.v` as the top module.

4. Run **Synthesis → Implementation → Generate Bitstream**.

5. Program the Nexys 7 board and connect a VGA monitor.

6. Player 1 uses on-board buttons; Player 2 uses the external controller.

## Testing & Verification

Development followed an incremental testing approach:

| Phase | Date | Description |
|---|---|---|
| **1. Input & Movement** | 11/14 | Basic player block movement and attack with button input |
| **2. Sprite Mapping** | 11/20 | Character sprite animation mapped to player states with hitbox visualization |
| **3. Full Game Logic** | 11/28 | Complete animation, hitstun, game resolver integration, win/lose conditions |

- **Vivado Simulation**: Used for early debugging of synthesis errors, port mismatches, and state transition issues via waveform analysis
- **On-Board Testing**: Post-implementation verification on VGA monitor with LED indicators mapped to player states

## Challenges & Solutions

| Challenge | Root Cause | Solution |
|---|---|---|
| BRAM color display errors | Inconsistent sprite dimensions | Forced all ROM and `.mem` files to exactly 126×126 pixels |
| Unresponsive player attacks | Wrong clock signal driving attack logic | Clocked attacks with `pixclk` signal matching button input timing |
| Players spawning at `min_x` instead of `spawn_x` | Synchronous reset in `player_move` caused `1'b0` to be fed to position | Changed reset to **asynchronous** — removed rising-edge detection for reset signal |

## Future Work

- More storage-efficient sprite animations to overcome BRAM limitations
- Multiple attack types and blocking mechanics
- Better input interfacing for richer player states
- Enhanced in-game visual effects (particles, UI polish)
- Stage obstacles and interactive props

## Author

**Louie Shen**

---

*Built for EE 354 — Final Project*
