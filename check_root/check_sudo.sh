#
# Check sudo
#

function check_sudo ()
{
 if [ ! $(id -u) == "0" ]; then
        echo "Start with sudo and try again"
        exit 1
 fi
}