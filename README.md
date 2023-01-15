# Linear Arrays with Digitizing Phase Errors

Consider a 32-element linear array on the z-axis with a raised-cosine taper (-10 dB) and d=0.54λ. Phase shifters have errors and when you scan, you need to select the phases which
fit best on a linear phase line and with equal + and – errors. This creates a random phase distribution error on the array and results in lower directivity and higher sidelobes. 

A test problem for scanning at θ=60 deg., select the phase shifter states and calculate the patterns using:
- 2 bit phase shifters
- 3 bit phase shifters
- 4 bit phase shifters
- 5 bit phase shifters

In the codes, 
- _N_ represents number of radiating elements
- _d_ represents the spacing between elements
- _raised_cos_ represents the raised cosine taper
- _angle_ represents the angle of scanning 
Changing these parameter will cause shift in direction of the beam. This will allow visualising beam scanning operations.

We range the phase shifter states in range [0 180]. The Phase Pattern is plotted accordingly. 
- For 2 bit phase shifter, the phase states are = [90, 180]
- For 3 bit phase shifter, the phase states are = [45, 90, 180]
- For 4 bit phase shifter, the phase states are = [22.5, 45, 90, 180]
- For 5 bit phase shifter, the phase states are = [11.25, 22.5, 45, 90, 180]

The Normalised Directivity is also plotted. 

~Arghyadeep Pal, MS Student, Applied Electromagnetics Group, Department of Electrical and Computer Engineering, University of California-San Diego

