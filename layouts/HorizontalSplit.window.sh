# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/5-pane"


# Window Name: 5-pane
#
# Goal:
# ---------------------------------------
# |                                     |
# |                   0                 |
# |                                     |
# |-------------------------------------|
# |                                     |
# |                   1                 |
# |                                     |
# ---------------------------------------

new_window "HorizontalSplit"

split_v 50
select_pane 0
