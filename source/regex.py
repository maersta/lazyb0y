# The following code will search 'MM/DD/YYYY' (e.g. 11/30/2016 or NOV/30/2016, etc ),
# and replace with 'MM-DD-YYYY' in multi-line mode.
import re
with open ('test.txt', 'r' ) as f:
    content = f.read()
    content_new = re.sub(r'@|\.se:|\.', r'\\n', content, flags = re.M)
