# Codex Setup Guide

This guide explains how to setup Codex in your Linux environment.

## Setup Codex Configurations

1. Setup the Codex CLI
2. Replace `~/.codex/config.toml` with the `config.toml` in this repository
3. Configure the `TARGET_DIR` in the `workspace.sh` of this repo and run it using `~/workspace.sh`
4. Verify that your directories are populated under `[permissions.secure.workspace_roots]` section of `~/.codex/config.toml`
