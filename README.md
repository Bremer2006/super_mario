# Super Co-Op Bros — Android APK Project & Real-Time 2P Engine

This package contains the complete native Android Studio project wrapping the **Super Co-Op Bros** 2-player real-time co-op side-scrolling platformer (`app/src/main/assets/index.html` + `MainActivity.java`).

## How to Generate the `.apk` File (2 Easy Ways)

### Method 1: Zero-Install Cloud APK Build via GitHub Actions (2 Minutes)
If you don't want to install Android Studio or the Android SDK on your computer:
1. Create a free repository on GitHub and upload the contents of this folder.
2. Open the **Actions** tab in your GitHub repository — the included `.github/workflows/build-apk.yml` workflow will automatically compile the project on Ubuntu with JDK 17 + Android SDK 34.
3. Click the finished workflow run and download **`super-coop-bros-apk` (`app-debug.apk`)** directly to your phone or PC.

### Method 2: Local Build via Android Studio or Command Line
1. Open this folder in **Android Studio** (Hedgehog / Iguana or newer).
2. Let Gradle sync, then select **Build > Build Bundle(s) / APK(s) > Build APK(s)**.
3. Your installable APK will be saved at `app/build/outputs/apk/debug/app-debug.apk`.
   *(Or run `bash build_apk.sh` from your terminal if `gradle` and the Android SDK are installed).*

## Game Architecture & Multiplayer Features
- **Peer-to-Peer WebRTC Networking (PeerJS)**: Player 1 taps **Create Room (Host P1)** to generate a 6-digit Room Code. Player 2 enters that code from anywhere in the world to connect directly over a low-latency WebRTC DataChannel.
- **Smart AI Partner & Local 2P Modes**: Play immediately solo alongside an autonomous AI Luca partner, or play 2-player on a single keyboard (`WASD + Space + F` and `Arrow Keys + Enter + Shift`).
- **Co-Op Mechanics**:
  - **Shared Dynamic Camera**: Tracks the midpoint of Marco (P1) and Luca (P2).
  - **Co-Op Head Bounce**: Jump on your partner's head to launch high into the air to reach secret gold ledges!
  - **Bubble Rescue (`🫧`)**: If a player takes damage or falls into a pit, they float toward their partner inside a rescue bubble—touch the bubble to pop it and bring your partner right back into the fight!
  - **3 Full Worlds**: *1-1 Mushroom Valley*, *1-2 Crystal Cavern*, and *1-3 Sky Fortress Boss* (featuring King Koopa-Bot).
