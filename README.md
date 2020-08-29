## Gnome Terminal Settings
```bash
# Save Gnome Terminal settings:
dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup.txt

# Load the saved settings:
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt
```

##tmux

#### Named Session
tmux new -s session_name

#### Detach
[Ctrl-b] d

#### List
tmux ls

#### Attach
tmux attach-session -t number

#### New Session
tmux new-session -d 'vim'
