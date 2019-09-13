# Key to Donkey

All the relevant information regarding to constructing and using the donkey car are provided in 
[here](https://docs.robocarstore.com/). Here we provide some additional pointers based on our experience. Read them carefully before 
starting with the Donkey Car.

##Hardware Setup :-

The hardware setup can be followed exactly as in the [link](https://docs.robocarstore.com/guide/build_hardware/).

##Software Setup :-

The software setup also can be followed from the [link](https://docs.robocarstore.com/guide/robot_sbc/setup_raspberry_pi/) 
on the robocarstore but with some changes as bwlow.

1. **It is advised to setup Buster with Desktop** ([here]( https://downloads.raspberrypi.org/raspbian_latest)) 
for easier usage of the raspbery pi. The image on the donkey car website does not have a desktop. 

2. Due to enterprise WLAN being used by us, the WLAN setup from Donkey website cannot be replicated. For WLAN setup refer to 
   [here](donkeyCar/WLAN.md)

##Calibration

1. While calibrating give small values and once you see the car moving at decent speeds use that as the maximum value. 
Dont try to get the car to work at maximum speeds a it then becomes difficult to control.
Forward throttle PWM value of 410 and Revers throttle PWM of 330 could be sufficient starting points. 

2. **Crashes can permanently damage the mechanics of the car so be wary of them!**  While calibrating make sure that the Donkey Car 
rides between two soft targets so that crashes will not be damaging.


## Some examples of Collector:-


1. [Garbage Collector 1](https://www.youtube.com/watch?v=BIPPkqXQrrY)

2. [Garbage Collector 2](https://www.youtube.com/watch?v=860LJxp8wfk)

3. [Garbage Collector 3](https://www.hackster.io/poopityscoop/litterbug-autonomous-trash-rover-765498)


Using additional Servos with Servo Controller ( possibly for the collector)

1. It is very good practice to not rotate the servos with hands. You could destroy them by doing so.

2. A usefull link to control servos - [here] (https://learn.adafruit.com/adafruit-16-channel-servo-driver-with-raspberry-pi/hooking-it-up)
 **Note: Hooking up a 5V power supply is important to drive servos. Hint : Look at the voltage converter outputs!**


## Joystick Mode:

Use the Joystick in X mode. 
