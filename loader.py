import os

def find_fof(folder):
    files = []

    for root, dirs, filenames in os.walk(folder):
        for f in filenames:
            if f.endswith(".p"):
                files.append(os.path.join(root, f))

    return files