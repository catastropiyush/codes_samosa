import numpy as np
import pylab as plt

wavelength_nm = np.linspace(100,5000,1000)
wavelength_m  = wavelength_nm*1e-9

h=6.626e-34
c=3.0e+8
k=1.38e-23

T=6000 #K
#def Planck
a=2.0*h*c**2
b=h*c/(wavelength_m*k*T)
black_body_intensity= a/ ((wavelength_m**5)*(np.exp(b)-1.0))
# return a/ ((wavelength_m**5)*(np.exp(b)-1.0))
RJ_intensity = 2*c*k*T/wavelength_m**4

plt.plot(wavelength_nm,black_body_intensity)
plt.plot(wavelength_nm,RJ_intensity)
plt.ylim(1e8,0.4e14)
plt.xlabel('Wavelength(nm)')
plt.ylabel('Intensity(W/ sr m^3)')
plt.title('T=6000 K')
plt.show()

