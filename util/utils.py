import sys
import base64

# Print messages in console...
def log(s):
    print(str(s), file=sys.stdout)

def alertBox(text):
    return '<script type="text/javascript">alert("{}");</script>'.format(text)

def encodeBase64(s):
    return base64.b64encode(bytes(s, 'utf-8')).decode('ascii')

def decodeBase64(s):
    try:
        return base64.b64decode(s).decode('ascii')
    except:
        return None

def strToDict(s):
    # https://stackoverflow.com/questions/17610732/error-dictionary-update-sequence-element-0-has-length-1-2-is-required-on-dj
    try:
        return dict(s)
    except:
        return eval(s)