#
# 02-path.sh
#
# This script is normally loaded through .profile. It's split off separately
# so that it can be edited using the 'vp' alias, and re entered into the
# environment using the 'sp' alias.
#

function PathPresent()
{
    local   add_dir="$1"
    local   dir
    local   sv_ifs=${IFS}
    IFS=:

    for dir in ${PATH}
    do
        if [ "${dir}" == "${add_dir}" ]
        then
            IFS=${sv_ifs}
            return 0
        fi
    done
    IFS=${sv_ifs}
    return 1
}

function AddPath()
{
    local   add_dir="$1"

    if [ -d "${add_dir}" ]
    then
        if PathPresent "${add_dir}"
        then
            # Path is already there - nothing to do
            return
        fi
        if [ -z "${PATH}" ]
        then
            PATH="${add_dir}"
        else
            PATH=${PATH}:"${add_dir}"
        fi
    fi
}

function PrependPath()
{
    local   add_dir="$1"

    if [ -d "${add_dir}" ]
    then
        if PathPresent "${add_dir}"
        then
            # Path is already there - nothing to do
            return
        fi
        if [ -z "${PATH}" ]
        then
            PATH="${add_dir}"
        else
            PATH="${add_dir}":${PATH}
        fi
    fi
}

PATH=''
AddPath "${HOME}/bin"
AddPath "${HOME}/utils"
#AddPath "${HOME}/local/bin"
AddPath '/usr/local/bin'
AddPath '/usr/local/bin'
AddPath '/usr/local/sbin'
AddPath '/bin'
AddPath '/sbin'
AddPath '/usr/bin'
AddPath '/usr/sbin'

uname=$(uname)

case "$(uname)" in

    Linux)
    	AddPath '/usr/X11R6/bin'
        AddPath "/opt/slickedit/bin"
        AddPath "/opt/CodeSourcery/Sourcery_G++_Lite/bin"
        AddPath "${HOME}/.wine/drive_c/WinAVR-20100110/bin"
        #AddPath "${HOME}/stm/gcc-arm-none-eabi-4_8-2013q4/bin"
        AddPath "${HOME}/stm/gcc-arm-none-eabi-4_8-2014q2/bin"
        ;;

    CYGWIN*)
        AddPath '/c/WinAVR/bin'
        AddPath '/c/Program Files/CodeSourcery/Sourcery G++/bin'
        AddPath '/c/WINDOWS'
        AddPath '/c/WINDOWS/system32'

        #needed for netsh
        AddPath '/c/WINDOWS/system32/Wbem'
        ;;
esac

export PATH

