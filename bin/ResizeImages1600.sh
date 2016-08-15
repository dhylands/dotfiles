#!/bin/bash
#
# This script resizes the photos from my camera down to what
# picasa used to do, i.e. no more than 1600 pixels on edge
#
#
# The resized photos are placed into a subdirectory called
# resized.

set -x

function GetImageDimensions()
{
    # The identify utility comes with Image Magick.

    img_width=$(identify -format "%w" $1)
    img_height=$(identify -format "%h" $1)
}

function ResizeImage()
{
    img_name="$1"

    GetImageDimensions "$1"

    new_width=${img_width}
    new_height=${img_height}

    max_width=1600
#    max_height=425

    if [ ${new_width} -gt ${max_width} ]
    then
        new_height=$(( ${new_height} * ${max_width} / ${new_width} ))
        new_width=${max_width}
    fi

#    if [ ${new_height} -gt ${max_height} ]
#    then
#        new_width=$((${new_width} * ${max_height} / ${new_height}))
#        new_height=${max_height}
#    fi

    echo "Resizing ${img_name} from ${img_width} x ${img_height} to ${new_width} x ${new_height} ..."

    dst_dir="$(dirname ${img_name})/resized"
    dst_name="${dst_dir}/$(basename ${img_name})"

    mkdir -p "${dst_dir}"

    convert -resize "${new_width}x${new_height}" "${img_name}" "${dst_name}"
}

for img_name in "$@"
do
    ResizeImage ${img_name}
done
