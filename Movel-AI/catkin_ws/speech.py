import speech_recognition as sr
import subprocess
import sys
import os

r = sr.Recognizer()
m = sr.Microphone()

def _runCommand( filename ):
    cmd="python " + filename
    p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    result = p.wait()
    a, b = p.communicate()
    stdout= a.decode("utf-8")
    print(stdout)

try:
    print("A moment of silence, please...")
    with m as source: r.adjust_for_ambient_noise(source)
    print("Set minimum energy threshold to {}".format(r.energy_threshold))
    while True:
        print("Say something!")
        with m as source: audio = r.listen(source)
        print("Got it! Now to recognize it...")
        try:
            # recognize speech using Google Speech Recognition
            value = r.recognize_google(audio)

            # we need some special handling here to correctly print unicode characters to standard output
            if str is bytes:  # this version of Python uses bytes for strings (Python 2)
                print(value.encode("utf-8"))
                command=value.encode("utf-8")
                   
                if(command=="go to kitchen"):
                 _runCommand("kitchen.py")
                elif(command=="go to room one"):
                 _runCommand("room1.py")
                elif(command=="go to room two"):
                 _runCommand("room2.py")
        except sr.UnknownValueError:
            print("Oops! Didn't catch that")
        except sr.RequestError as e:
            print("Uh oh! Couldn't request results from Google Speech Recognition service; {0}".format(e))
except KeyboardInterrupt:
    pass
