#!/bin/bash

cd datasets/super_resolution

# set -evx
for dir in */; do
    if [ -d "$dir" ]; then
        cd "$dir"
        echo $dir
        for f in *jpg; do
           echo ${f::-4}.png
           ../../../realesrgan-ncnn-vulkan -i $f -o ${f::-4}.png
           rm $f
        done
        cd ..
    fi
done

cd ../..



