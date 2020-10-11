#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_synthesis"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/install/lib/python3/dist-packages:/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/src/speech/hlpr_speech/hlpr_speech_synthesis/setup.py" \
     \
    build --build-base "/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/build/speech/hlpr_speech/hlpr_speech_synthesis" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/install" --install-scripts="/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/install/bin"
