import os

def main():
    print("--- Start of Program ---")
    rmfile(".")
    print("--- End of Program ---")

def rmfile(p):
    l = os.listdir(p)
    
    for f in l:
        cp = p + "/" + f
        if (os.path.isdir(cp)):
            rmfile(cp)
            # Not gonna do rmdir since it might cause error
        else:
            if (f.endswith(".pyc")):
                if (rm(cp)):
                    print("Removed file {}".format(cp))

def rm(f):
    try:
        os.remove(f)
        return True
    except:
        return False

if (__name__ == "__main__"):
    main()