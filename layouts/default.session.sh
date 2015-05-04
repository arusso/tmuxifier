# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/my-awesome-session"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "default"; then

  # load puppet pane
  window_root "~/git/puppet"
  load_window "5PaneSplit"
  run_cmd "tmux rename-window -t $(tmux display-message -p '#I') puppet"

  # load general dev pane
  window_root "~/git"
  load_window "5PaneSplit"
  run_cmd "tmux rename-window -t $(tmux display-message -p '#I') dev"

  # load irssi
  window_root "~/"
  load_window "HorizontalSplit"
  select_pane "0"
  run_cmd "irssi -c ucb"
  select_pane "1"
  run_cmd "irssi -c arusso"
  run_cmd "tmux rename-window -t $(tmux display-message -p '#I') irc"

  # load my scratch space
  window_root "~/"
  new_window "scratch"

  select_window "0"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
