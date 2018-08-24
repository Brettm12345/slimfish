#!/usr/bin/env fish

set caller $argv[1]

set -l dir (dirname (status --current-filename))
set -U prompt_slimfish_gitline_$caller (python $dir/gitline.py | head -n 1)
sleep 0.05
kill -USR2 $caller
