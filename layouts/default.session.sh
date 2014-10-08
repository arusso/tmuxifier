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
  new_window "irssi"
  run_cmd "irssi -c bobbie"

  # load nagios log
  window_root "~/"
  new_window "nagios"
  run_cmd "ssh nagios -c 'sudo tail -f /var/log/nagios/nagios.log'"

  # load my scratch space
  window_root "~/"
  new_window "scratch"

  select_window "0"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
