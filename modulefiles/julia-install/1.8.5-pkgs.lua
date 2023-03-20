depends_on("gcc/11.3.0", "openmpi/4.1.4-cuda", "cuda-11.7.0", "julia/1.8.5")
unsetenv("JULIA_LOAD_PATH")
setenv("JULIA_DEPOT_PATH", "/appl/soft/math/julia/depot")
setenv("JULIA_PROJECT", "/appl/soft/math/julia/depot/environments/v1.8_shared")