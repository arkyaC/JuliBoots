module consts

export PRECISION
export BB_NEWTON_GOAL, BB_ISGOOD, BB_ITERMAX
export LP_STOPGOAL, LP_STOPITERS, LP_ITERMAX,LPFILE, DELTAMAX, FUDGE, VERBOSE,CULLPOLES
export LU_FUDGE

PRECISION=212 #Nr of digits of precision to be used. This had better match the one in the tables
set_bigfloat_precision(PRECISION) #Must set it immediately, since we use bigfloats below.


### BRANCH AND BOUND

BB_NEWTON_GOAL=1e-12      # Accuracy in determination of minimum during branch and bound
BB_ISGOOD=0.1     # when to determine if an interval is good; decreasing this parameter reduces the number of "domain error Newton"
BB_ITERMAX=500       # When to stop Newton's method

### LP

DELTAMAX=BigFloat(70)        # maximum \Delta WARNING: these things have different precision than stuff read from CBs
FUDGE=BigFloat(1e-30)         # Used for: not evaluating things at unitarity bound for L=0;
                              # Plays the role of zero components in things like global symmetry bounds
VERBOSE=false                 # whether to print timings
# File System
LPFILE="./LPLog.txt"


LP_STOPGOAL=BigFloat(1e-5)       # Linear problem will optimization if relative cost variation will be
LP_STOPITERS=25                    # smaller or equal to first value for LP_STOPITER iterations in a row



#push!(LOAD_PATH,"C:\\Users\\Miguel_Paulos\\Dropbox\\Julia\ Code")

### BOOTSTRAP

LP_ITERMAX=10000 #when to stop looking for a solution during bissection.
CULLPOLES=BigFloat(1e-70) #poles whose coefficients are smaller than this will be ommitted (roughly). Used in setupLP.

### LU

LU_FUDGE=BigFloat(1e-60) #used when checking if there's a non-zero pivot

end
