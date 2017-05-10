#!/usr/bin/env bash

# clear playlist
mpc clear

# select playlist
playlists=$(mpc lsplaylists)
select playlist in $playlists
do
  if [ -n "${playlist}" ]
  then
    mpc load "${playlist}"
  fi
  break
done

# remove duplicates
echo "removing duplicates..."
mpc playlist | sort | uniq -d -c | while read song; do count=$(echo "$song" | sed -e "s/^[ \t]*//" | cut -d" " -f1); song=$(echo "$song" | sed -e "s/^[ \t]*//" | cut -d" " -f2-); for (( i = 2 ; i <= $count; i++ )); do mpc playlist | grep -n "$song" | tail -n 1 | cut -d: -f1 | mpc del; done; done

# list playlist
# mpc playlist

# remove old playlist
read -p "Are you sure you want to replace ${playlist}? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  mpc rm "${playlist}"
  # save cleaned up playlist
  mpc save "${playlist}"
else
  exit
fi
