using MPI
MPI.Init()
comm = MPI.COMM_WORLD
rank = MPI.Comm_rank(comm)
size = MPI.Comm_size(comm)
println("Hello from process $(rank) out of $(size). Hostname $(gethostname()) and pid $(getpid()).")
MPI.Barrier(comm)
