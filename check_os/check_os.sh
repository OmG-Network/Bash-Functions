#
# Check OS
#
function check_os ()
{
        #
        # Check Ubuntu
        #
    if [ -x /usr/bin/lsb_release ]; then
        if [ $(/usr/bin/lsb_release -si) == "Ubuntu" ]; then
            if [ $(/usr/bin/lsb_release -rs | grep -o "[0-9].." | grep -o ".[0-9]") -ge "14" ]; then
                echo "Success"
            else
                echo "Outdated: $(/usr/bin/lsb_release -ds) min. 14.04 LTS"
            fi
        fi
        #
        # Check Debian 
        #
        if [ $(/usr/bin/lsb_release -si) == "Debian" ]; then
            if [ $(/usr/bin/lsb_release -rs | grep -o "[0-9]." | grep -o "[0-9]") -ge "8" ]; then
              echo "Success"
            else
              echo "Outdated: $(/usr/bin/lsb_release -ds) min. Debian 8"
            fi
        fi
    else
        echo "No LSB found"
        exit 1
 fi
}