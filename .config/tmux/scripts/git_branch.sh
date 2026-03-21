#!/bin/sh
cd "$1" 2>/dev/null && git rev-parse --abbrev-ref HEAD 2>/dev/null
