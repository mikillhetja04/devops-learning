#!/bin/bash
file=$1
if [ -f "$file" ]; then
    echo "File $file ton tai!"
else
    echo "File $file khong ton tai!"
fi
