#!/usr/bin/env bash
read -p "Enter Query: " query
query=`echo $query | tr ' ' '+'`

tmux neww bash -c "tldr $query | less"
