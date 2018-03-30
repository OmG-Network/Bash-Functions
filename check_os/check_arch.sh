function check_arch ()
{
if [ -x /usr/bin/arch ]; then
        CPU_ARCH=$(/usr/bin/arch)
    # Check x64
        if [ $CPU_ARCH == "x86_64" ]; then
            echo "Supported"
        fi
    # Check x86
        if [ $CPU_ARCH == "x86" ]; then
            echo "Not Supported"
        fi
    # Check ARM7
        if [ $CPU_ARCH == "armv71" ]; then
            echo "Supported"
        fi
else
        CPU_ARCH=$(lscpu | grep Architecture | awk '{print $2}')
    # Check x64
        if [ $CPU_ARCH == "x86_64" ]; then
            echo "Supported"
        fi
    # Check x86
        if [ $CPU_ARCH == "x86" ]; then
            echo "Not Supported"
        fi
    # Check ARM7
        if [ $CPU_ARCH == "armv71" ]; then
            echo "Supported"
        fi
fi
}
