# !/bin/sh

# We need to give Node a fatter chunk of memory before it can compile this
# because I refuse to use fewer npm packages
old_options=$NODE_OPTIONS
export NODE_OPTIONS=--max_old_space_size=4096
pkg . -t node10-$1-x64 -o build/newman
# If we don't clear this environment variable, we get a FLAGS_MISMATCH from pkg when trying to run the output
export NODE_OPTIONS=$old_options