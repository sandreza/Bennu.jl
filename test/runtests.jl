using Bennu
using Test
using Pkg: Pkg

using Adapt
using Combinatorics
using CUDA
using CUDAKernels
using EzXML: EzXML
using FastGaussQuadrature: FastGaussQuadrature
using FillArrays
using KernelAbstractions
using LinearAlgebra
using Random
using SparseArrays
using StaticArrays
using StructArrays
using Tullio
using WriteVTK

CUDA.allowscalar(false)
include("arrays.jl")
include("cells.jl")
include("gridgenerators.jl")
include("grids.jl")
include("stackedgrids.jl")
include("kernelabstractions.jl")
include("kroneckeroperators.jl")
include("metrics.jl")
include("operators.jl")
include("partitions.jl")
include("permutations.jl")
include("quadratures.jl")
include("sparsearrays.jl")
include("structarrays.jl")
include("tuples.jl")
include("banded.jl")


@testset "advection 2D" begin
    @test include("../examples/advection/advection_2d.jl")
end

@testset "grid" begin 
    @test include("../examples/grids/hilbert.jl")
end
