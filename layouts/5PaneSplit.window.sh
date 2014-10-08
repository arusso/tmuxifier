# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/5-pane"


# Window Name: 5-pane
#
# Goal:
# ---------------------------------------
# |                 |                   |
# |       0         |         1         |
# |                 |                   |
# |-------------------------------------|
# |          |           |              |
# |    2     |      3    |     4        |
# |          |           |              |
# ---------------------------------------

new_window "5PaneSplit"

# create our 5 panes
split_v 40
split_h 70
split_h 43
select_pane 0
split_h 50
