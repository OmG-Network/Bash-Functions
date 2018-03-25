#
# Check root
#

function check_root ()
{
 if [ ! $(whoami) == "root" ]; then
        echo "Start as root an try again"
        exit 1
 fi
}