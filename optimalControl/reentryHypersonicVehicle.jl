# Optimal Control Work
# Attempting John T Betts Book work on Reentry Vehicle using Julia

# Some thoughts -- this will be an attempt to recreate a trajectory generator using aerodynamic values provided in the example, however, 
# It is desirable to build our own aerodynamic modeling in the Hypersonic regime

# still unsure about julia's methodology on classes and inheritance... more to come 

using LinearAlgebra
#using JuMP
#import interpolation

## Initializing aerodynamic and atmospheric forces values  

const a0 = 0.2074               # part of Lift Coefficient (CL) equation
const a1 = 0.029244             # part of Lift Coefficient (CL) equation 
const mu = 0.14076539*10^17     # standard gravitational parameter: comes from mu = G*M 
const b0 = 0.07854              # Part of the Drag Coefficient (CD) equation 
const b1 = -0.61592*10^-2       # Part of the Drag Coefficient (CD) equation
const b2 = 0.621408*10^3        # Part of the Drag Coefficient (CD) equation
const c0 = 1.0672181
const c1 = -0.19213774*10^-1 
const c2 = 0.21286289*10^-3
const c3 = -0.10117249*10^-5
const h_r = 23800               # reference height (?)
const weight = 203000           # lbs
const g0 = 32.174               # ft/sec^2
const mass = weight/g0   
const rho = 0.0022378           # inital denisty val (?)
const R_e = 20902900            # Reynold's number (?)
const S = 2690                  # wing area (? in ft^2?)

## Initial conditions 
const alt_h = 260000   # altitude in ft
const long_phi = 0     # longitude in deg
const lat_theta = 0    # latitude in deg 
const fpa_gamma = -1   # flight path angle in deg 
const az_psi = 90      # azimuth in deg 
const t_step = 0.1     # time step 
const v = 25600        #  velocity in ft/sec 
# controls 
const aoa_alpha = 0    # Assumption: angle of attack in deg is 0 initially
const bank_beta = 0    # Assumption: bank angle in deg is 0 initially

#final conditions 
# This can be whatever we like

# Aero and Atmospheric Equations 
#Thoughts: these are just helper functions

# Differential Algebraic System of equations 
#TODO: :)

# System Dynamics: Numerical Solvers -- Rectangle, Trapezoid, Simpson?

# More Constraints: Heating conditions as simple helper function