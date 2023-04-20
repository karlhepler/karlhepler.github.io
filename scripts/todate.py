#!/usr/bin/env python3

import sys
import time
from datetime import datetime, timezone, timedelta

if len(sys.argv) < 2:
    print('Please provide filename')
    sys.exit(1)

with open(sys.argv[1], 'r') as f:
    lines = f.readlines()

found = False
outlines = []

now = datetime.now()
offset = -time.timezone // 3600
local_tz = timezone(timedelta(hours=offset))
now_with_tz = now.replace(tzinfo=local_tz)
now_date = now_with_tz.isoformat(timespec='seconds')

for line in lines:
    if not found and line.startswith('date'):
        line = 'date: ' + now_date + '\n'
        found = True

    outlines.append(line)

if not found:
    print('Date was not found in file!')
    sys.exit(1)

with open(sys.argv[1], 'w') as f:
    f.writelines(outlines)

print('Date updated to ' + now_date)
