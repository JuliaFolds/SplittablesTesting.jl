using SplittablesTesting
using Test

@testset "test_ordered" begin
    SplittablesTesting.test_ordered([
        (label = "First Test", data = 1:5),
        (label = "Second Test", data = (a = 1, b = 2, c = 3)),
        zip(1:3, 4:6),
    ])
end

@testset "test_unordered" begin
    SplittablesTesting.test_unordered([
        (label = "First Test", data = 1:5),
        (label = "Second Test", data = (a = 1, b = 2, c = 3)),
        zip(1:3, 4:6),
    ])
end
