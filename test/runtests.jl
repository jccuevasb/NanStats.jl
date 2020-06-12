using NanStats
using Printf

@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

vec1=[NaN,3,4,NaN]
mn=nanmean(vec1);
varn=nanvar(vec1);
kurn=nankurt(vec1);
sken=nanskew(vec1);

print("vec1=$(vec1)\n");

@testset "nanmean" begin
	@test mn == 3.5
        print("The mean for vec1 ignoring NaN values is $(mn)\n");
end	

@testset "nanvar" begin
	@test varn == 0.25
        print("The variance for vec1 ignoring NaN values is $(varn)\n")
end	

@testset "nankurt" begin
	@test kurn == 1.0
        print("The kurtosis for vec1 ignoring NaN values is $(kurn)\n")
end	

@testset "nanskew" begin
	@test sken == 0.0
        print("The skewness for vec1 ignoring NaN values is $(sken)\n")
end	
