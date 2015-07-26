module StatsFuns

using Compat

import Base.Math.@horner
import Compat.@irrational

export
    # constants
    twoπ,       # 2π
    fourπ,      # 4π
    halfπ,      # π / 2
    quartπ,     # π / 4
    invπ,       # 1 / π
    twoinvπ,    # 2 / π
    fourinvπ,   # 4 / π
    inv2π,      # 1 / (2π)
    inv4π,      # 1 / (4π)
    sqrt2,      # √2
    sqrt3,      # √3
    sqrtπ,      # √π
    sqrt2π,     # √2π
    sqrt4π,     # √4π
    sqrthalfπ,  # √(π / 2)
    loghalf,    # log(1 / 2)
    logtwo,     # log(2)
    logπ,       # log(π)
    log2π,      # log(2π)
    log4π,      # log(4π)

    # basicfuns
    xlogx,          # x * log(x) for x > 0, or 0 when x == 0
    xlogy,          # x * log(y) for x > 0, or 0 when x == 0
    logistic,       # 1 / (1 + exp(-x))
    logit,          # log(x / (1 - x))
    log1psq,        # log(1 + x^2)
    log1pexp,       # log(1 + exp(x))
    log1mexp,       # log(1 - exp(x))
    log2mexp,       # log(2 - exp(x))
    logexpm1,       # log(exp(x) - 1)
    softplus,       # alias of log1pexp
    invsoftplus,    # alias of logexpm1
    log1pmx,        # log(1 + x) - x
    logmxp1,        # log(x) - x + 1
    logsumexp,      # log(exp(x) + exp(y)) or log(sum(exp(x)))
    softmax,        # exp(x_i) / sum(exp(x)), for i
    softmax!,       # inplace softmax

    # misc
    logmvgamma,     # logarithm of multivariate gamma function
    lstirling_asym,

    # distrs/beta
    betapdf,        # pdf of beta distribution
    betalogpdf,     # logpdf of beta distribution
    betacdf,        # cdf of beta distribution
    betaccdf,       # ccdf of beta distribution
    betalogcdf,     # logcdf of beta distribution
    betalogccdf,    # logccdf of beta distribution
    betainvcdf,     # inverse-cdf of beta distribution
    betainvccdf,    # inverse-ccdf of beta distribution
    betainvlogcdf,  # inverse-logcdf of beta distribution
    betainvlogccdf, # inverse-logccdf of beta distribution

    # distrs/norm
    normpdf,        # pdf of normal distribution
    normlogpdf,     # logpdf of normal distribution
    normcdf,        # cdf of normal distribution
    normccdf,       # ccdf of normal distribution
    normlogcdf,     # logcdf of normal distribution
    normlogccdf,    # logccdf of normal distribution
    norminvcdf,     # inverse-cdf of normal distribution
    norminvccdf,    # inverse-ccdf of normal distribution
    norminvlogcdf,  # inverse-logcdf of normal distribution
    norminvlogccdf, # inverse-logccdf of normal distribution

    # distrs/binom
    binompdf,        # pdf of binomial distribution
    binomlogpdf,     # logpdf of binomial distribution
    binomcdf,        # cdf of binomial distribution
    binomccdf,       # ccdf of binomial distribution
    binomlogcdf,     # logcdf of binomial distribution
    binomlogccdf,    # logccdf of binomial distribution
    binominvcdf,     # inverse-cdf of binomial distribution
    binominvccdf,    # inverse-ccdf of binomial distribution
    binominvlogcdf,  # inverse-logcdf of binomial distribution
    binominvlogccdf  # inverse-logccdf of binomial distribution


## source files
include("constants.jl")
include("basicfuns.jl")
include("misc.jl")

include("rmath.jl")
using .Rmath
include(joinpath("distrs", "beta.jl"))
include(joinpath("distrs", "binom.jl"))
include(joinpath("distrs", "norm.jl"))

end # module
