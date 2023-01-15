# Linear Arrays with Digitizing Phase Errors

Consider a 32-element linear array on the z-axis with a raised-cosine taper (-10 dB) and d=0.54λ. Phase shifters have errors and when you scan, you need to select the phases which
fit best on a linear phase line and with equal + and – errors. This creates a random phase distribution error on the array and results in lower directivity and higher sidelobes. 

A test problem for scanning at θ=60 deg., select the phase shifter states and calculate the patterns using:
- 2 bit phase shifters

![untitled1](https://user-images.githubusercontent.com/122711883/212532401-310e5bf7-d200-475b-a851-bdf6610256ed.png)
- 3 bit phase shifters

![untitled1](https://user-images.githubusercontent.com/122711883/212532536-470b4a05-9d2e-4eee-b355-b7e186d4aff2.png)

- 4 bit phase shifters

![untitled1](https://user-images.githubusercontent.com/122711883/212532691-178cabb7-8fed-431c-9e15-037f63b0831a.png)


- 5 bit phase shifters

In the codes, 
- _N_ represents number of radiating elements
- _d_ represents the spacing between elements
- _raised_cos_ represents the raised cosine taper
- _angle_ represents the angle of scanning 

Changing these parameter will cause shift in directCancel changesion of the beam. This will allow visualising beam scanning operations.

We range the phase shifter states in range [0 180]. The Phase Pattern is plotted accordingly. 
- For 2 bit phase shifter, the phase states are = [90, 180]
![untitled2](https://user-images.githubusercontent.com/122711883/212532402-99f14004-b144-4d9f-862c-f587922c7bf2.png)
- For 3 bit phase shifter, the phase states are = [45, 90, 180]
![untitled2](https://user-images.githubusercontent.com/122711883/212532538-af15a2ba-4a5e-4657-8aef-3877f35ed453.png)
- For 4 bit phase shifter, the phase states are = [22.5, 45, 90, 180]
![untitled2](https://user-images.githubusercontent.com/122711883/212532689-264bc46a-d326-4243-8358-c2dbd2542258.png)
- For 5 bit phase shifter, the phase states are = [11.25, 22.5, 45, 90, 180]

The Directivity is also calculated and plotted. 

~Arghyadeep Pal, MS Student, Applied Electromagnetics Group, Department of Electrical and Computer Engineering, University of California-San Diego.

