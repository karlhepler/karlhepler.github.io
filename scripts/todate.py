#!/usr/bin/env python3

import sys
import datetime
from dateutil import tz

if len(sys.argv) < 2:
    print('Please provide filename')
    sys.exit(1)

with open(sys.argv[1], 'r') as f:
    lines = f.readlines()

found = False
outlines = []

def local_datetime_string():
    now = datetime.datetime.now(tz.tzlocal())
    local_now_str = now.strftime('%Y-%m-%dT%H:%M:%S%z')
    # Insert the colon in the timezone offset
    local_now_str = local_now_str[:-2] + ':' + local_now_str[-2:]
    return local_now_str

now_date = local_datetime_string()

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
