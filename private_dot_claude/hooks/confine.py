#!/usr/bin/env python
import json, os, sys

ti = (json.load(sys.stdin).get("tool_input") or {})
root = os.path.realpath(os.environ.get("CLAUDE_PROJECT_DIR", os.getcwd()))

for key in ("file_path", "path", "notebook_path", "directory", "dir_path"):
    v = ti.get(key)
    if not isinstance(v, str) or not v.strip():
        continue
    rp = os.path.realpath(os.path.expanduser(v))
    if rp == root or rp.startswith(root + os.sep) or rp.startswith("/tmp/"):
        continue
    sys.stderr.write("BLOCKED: %s resolves to %s, outside project root %s\n" % (v, rp, root))
    sys.exit(2)
sys.exit(0)
