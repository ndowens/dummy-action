#!/bin/bash
export PKGS="$(git diff HEAD~1..HEAD~2 --name-only)"
