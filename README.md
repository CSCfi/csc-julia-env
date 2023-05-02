# CSC Julia Environment
## Systems
- Puhti
- Mahti
- LUMI (CSC local installation)

All systems use Lmod and Slurm.


## Installation paths
Diretory for Julia modulefiles:

- Puhti:`/appl/modulefiles/julia`
- Mahti:`/appl/modulefiles/julia`
- LUMI: `/appl/local/csc/modulefiles/julia`

Directory for Julia Jupyter modulefiles:

- Puhti: `/appl/modulefiles/julia-jupyter`
- Mahti: `/appl/modulefiles/julia-jupyter`
- LUMI: `/appl/local/csc/modulefiles/julia-jupyter`

Directory for the Julia application:

- Puhti: `/appl/soft/math/julia`
- Mahti: `/appl/soft/math/julia`
- LUMI: `/appl/local/csc/soft/math/julia`

Subdirectories in the Julia application directory:

- Directory for Julia binary: `julia-v#.#.#`
- Directory for shared Julia depots: `depot`
- Directory for Julia kernels for Jupyter: `jupyter`
- Directory for Jupyter installation for Julia: `jupyter-env`


## Installing Julia
Download and unpack the Julia binaries to the Julia application directory.

```bash
export JULIA_APPLDIR="/appl/soft/math/julia"
export JULIA_VERSION="1.8.5"
bash julia/binary.sh
```


## Installing shared packages
First, we must add the modulefiles to the modulepath to make them available on the current shell session.

```bash
source modulefiles/env.sh
```

Then, we can load the `julia-packages` module.

```bash
module load julia-packages/1.8.5
```

Now, we can install packages by running install scripts.

```bash
julia packages/mkl.jl
julia packages/mpi.jl
julia packages/cuda.jl
julia packages/ijulia.jl
julia packages/ijulia_installkernel.jl
```

Finally, we must instantiate the installed packages.

```bash
julia packages/instantiate.jl
```


## Testing Julia and shared packages
Run tests for Julia and shared packages.


## Adding Julia module
If the tests pass, we can make the Julia installation available to users by adding a Julia module to the modulefiles directory.
We need to copy the Julia module to the modulefiles directory.

```bash
cp modulefiles/julia/1.8.5.lua /appl/modulefiles/julia/1.8.5.lua
```

Note that we need to change the version string if we install a diffent version.


## Testing Julia module
We can test the Julia module by loading it, checking the Julia version and testing the Julia man pages.

```bash
module load julia/1.8.5
```

```bash
julia --version
```

```bash
man -w julia
```

