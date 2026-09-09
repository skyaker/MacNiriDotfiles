# Niri application shortcuts

The config keeps the macOS application shortcuts and makes them launch or
focus an existing window:

| Shortcut | Application |
| --- | --- |
| Ctrl+M | Spotify |
| Ctrl+K | kitty |
| Ctrl+F | Firefox |
| Ctrl+O | Obsidian |
| Ctrl+P | mpv (the Linux replacement for IINA) |

`launch-or-focus` uses niri's window list and `focus-window`, so it can bring
an existing app forward from another workspace. If no matching window exists,
it runs the configured application command.
