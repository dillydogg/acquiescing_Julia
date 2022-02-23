### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ 95579e16-9373-11ec-233f-9752426f16db
using BenchmarkTools

# ╔═╡ b0cdf4d7-22d9-46c9-9c71-3e8bf6c6dcd3
function fibo_nums(up_to)
    fibs = [1]
    num = 2
    while num < up_to
        push!(fibs, num)
        num = fibs[end] + fibs[end-1]
    end
    return fibs
end

# ╔═╡ 4d73c954-3216-49bf-bd77-2d48fb331428
@benchmark fibo_nums(4_000_000)

# ╔═╡ 6a7d9697-a891-4dbf-baae-54466ceec25e
function add_evens(arr)
	return sum(x for x in arr if x % 2 == 0)
end

# ╔═╡ 3119ae50-3bf4-435e-904d-a9149b22777e
@benchmark fibo_nums(4_000_000) |> add_evens

# ╔═╡ 72651166-13fe-47e9-ada5-2cde051aa95f
fibo_nums(4_000_000) |> add_evens

# ╔═╡ d8e01b2b-52e2-4ad1-a9f4-56577a76fe43
function add_evens_arr(arr)
	return sum([x for x in arr if x % 2 ==0])
end

# ╔═╡ e0a40ce1-9f04-46b5-aeeb-11c1b226a158
@benchmark fibo_nums(4_000_000) |> add_evens_arr

# ╔═╡ 084bbc1b-0573-46ca-af1b-f8ae27b22dfb
fibo_nums(4_000_000) |> add_evens_arr

# ╔═╡ 8d2ae834-483a-48b3-aa7a-283f2bf9e19e
function fibo_nums_new(up_to)
    fibs = [1]
    num = 2
    while num < up_to
        push!(fibs, num)
        num += fibs[end-1]
    end
    return fibs
end

# ╔═╡ 62d651ba-ef9b-4e1e-99fe-c27d409f8813
@benchmark fibo_nums_new(4_000_000) |> add_evens

# ╔═╡ a285f77b-e062-4b61-9314-74f32dccf89d
function sum_fibs(up_to)
	a, b, sum = 1, 1, 0
	while sum < up_to 
		sum += (a + b)
		a, b = a + (2 * b), (2 * a) + (3 * b)
	end
	return sum
end

# ╔═╡ bf33952a-67d2-474a-9bca-c81ea81161aa
@benchmark sum_fibs(4_000_000) samples=100_000

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
BenchmarkTools = "6e4b80f9-dd63-53aa-95a3-0cdb28fa8baf"

[compat]
BenchmarkTools = "~1.3.1"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.BenchmarkTools]]
deps = ["JSON", "Logging", "Printf", "Profile", "Statistics", "UUIDs"]
git-tree-sha1 = "4c10eee4af024676200bc7752e536f858c6b8f93"
uuid = "6e4b80f9-dd63-53aa-95a3-0cdb28fa8baf"
version = "1.3.1"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "13468f237353112a01b2d6b32f3d0f80219944aa"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.2"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Profile]]
deps = ["Printf"]
uuid = "9abbd945-dff8-562f-b5e8-e1ebf5ef1b79"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╠═95579e16-9373-11ec-233f-9752426f16db
# ╠═b0cdf4d7-22d9-46c9-9c71-3e8bf6c6dcd3
# ╠═4d73c954-3216-49bf-bd77-2d48fb331428
# ╠═6a7d9697-a891-4dbf-baae-54466ceec25e
# ╠═3119ae50-3bf4-435e-904d-a9149b22777e
# ╠═72651166-13fe-47e9-ada5-2cde051aa95f
# ╠═d8e01b2b-52e2-4ad1-a9f4-56577a76fe43
# ╠═e0a40ce1-9f04-46b5-aeeb-11c1b226a158
# ╠═084bbc1b-0573-46ca-af1b-f8ae27b22dfb
# ╠═8d2ae834-483a-48b3-aa7a-283f2bf9e19e
# ╠═62d651ba-ef9b-4e1e-99fe-c27d409f8813
# ╠═a285f77b-e062-4b61-9314-74f32dccf89d
# ╠═bf33952a-67d2-474a-9bca-c81ea81161aa
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
