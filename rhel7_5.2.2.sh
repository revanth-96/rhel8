#!/bin/bash

# 5.2.2 Ensure sudo commands use pty
echo
echo \*\*\*\* 5.2.2 Ensure sudo commands use pty
grep -Ei '^\s*Defaults\s+([^#]+,\s*)?use_pty(,\s+\S+\s*)*(\s+#.*)?$' /etc/sudoers /etc/sudoers.d/* || echo "Defaults use_pty" >> /etc/sudoers



