# YAZI

**Navigation**
| Key    | Description |
|--------|-------------|
| `g->h` | goto ~      |

**Finding + Filtering**
| Key      | Description                                       |
|----------|---------------------------------------------------|
| `/`      | find files                                        |
| `n`      | Go to the next found                              |
| `N`      | Go to the previous found                          |
| `f`      | use `fd` to find name in the current tree         |
| `F`      | use `ripgrep` to find content in the current tree |
| `Ctrl+f` | Cancel search                                     |

**Selection**
| Key | Description      |
|-----|------------------|
| `v` | enter selection  |
| `V` | cancel selection |

**File Operations**
| Key        | Description                                 |
|------------|---------------------------------------------|
| `Enter`    | open selected file                          |
| `Tab`      | show file information                       |
| `y` or `x` | copy / cut file                             |
| `Y` or `X` | cancel copy / cut status                    |
| `p`        | paste copies / cut file                     |
| `p`        | paste copies / cut file overwrite           |
| `d`        | trash selected file(s)                      |
| `r`        | rename selected file(s)                     |
| `a`        | create a file (ends with / for directories) |

# NIX

**Package Management**
| Command                                   | Description                                                                                             |
|-------------------------------------------|---------------------------------------------------------------------------------------------------------|
| `nix profile add`                         | Adds a specified application. The application itself it specified as channel#app (or github flake name) |
| `nix profile list`                        | View the currently installed and linked applications                                                    |
| `nix profile upgrade x/--all`             | Upgrades applications                                                                                   |
| `nix profile remove`                      | Removes the currently linked application (doesn't actually delete it)                                   |
| `nix profile history`                     | View generation history (very handy to see where to rollback)                                           |
| `nix profile rollback`                    | Rollback to specific generation                                                                         |
| `nix profile wipe-history --older-than x` | wipes generations history                                                                               |
| `nix-store --gc`                          | Run garbage collector that actually deletes unused trash                                                |