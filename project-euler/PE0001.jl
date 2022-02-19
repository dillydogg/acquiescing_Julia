### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ 28bee0dc-7229-4fc8-9520-3995fbd6e670
using BenchmarkTools

# ╔═╡ c0f409f2-91ba-11ec-2dfb-9debffa73b46
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# ╔═╡ 5e1a2362-bbea-47e0-a96c-a30a5ffdc9f2
function sum_mults(up_to, array_of_multiples)
	array = 1:up_to-1
	mult_array = []
	for num in array
		for mult_test in array_of_multiples
			if num % mult_test == 0 && !(num in mult_array)
				push!(mult_array, num)
			end
		end
	end		
	return sum(mult_array)
end

# ╔═╡ d89d8840-9e6a-453f-841d-677d026a3389
sum_mults(1000, [3,5])

# ╔═╡ bfc32119-a489-4a06-a4b6-872af425048c
# Don't create the full list, just add up on the spot.
function sum_mults_of_3_and_5(up_to)
	array = 1:up_to-1
	mult_sum = 0
	for num in array
		if num % 3 == 0 || num % 5 == 0
			mult_sum += num
		end
	end
	return mult_sum
end

# ╔═╡ 41e84459-2fad-4214-bf87-b9fc43e4f6cc
sum_mults_of_3_and_5(1000)

# ╔═╡ 8644a43e-0eed-4848-ae03-1c48d1435475
# Trying using array comprehension.

# ╔═╡ ea51a779-fdaa-430a-85da-969f68786abb
sum([x for x in 1:1000-1 if x % 3 == 0 || x % 5 == 0])

# ╔═╡ 8868e979-ae04-4716-b0db-6ec8dcc2d677
@time sum([x for x in 1:1000-1 if x % 3 == 0 || x % 5 == 0])

# ╔═╡ 1da9ed3c-0e22-4e76-8d8f-23c4a7ef8b72
@time sum_mults_of_3_and_5(1000)

# ╔═╡ 0aa863d6-bb55-4b14-aa8f-f37b0a2371ed
@benchmark sum([x for x in 1:1000-1 if x % 3 == 0 || x % 5 == 0])

# ╔═╡ 794f5a15-350a-4677-ad54-6e1a446ccd25
@benchmark sum_mults_of_3_and_5(1000)

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
# ╠═c0f409f2-91ba-11ec-2dfb-9debffa73b46
# ╠═28bee0dc-7229-4fc8-9520-3995fbd6e670
# ╠═5e1a2362-bbea-47e0-a96c-a30a5ffdc9f2
# ╠═d89d8840-9e6a-453f-841d-677d026a3389
# ╠═bfc32119-a489-4a06-a4b6-872af425048c
# ╠═41e84459-2fad-4214-bf87-b9fc43e4f6cc
# ╠═8644a43e-0eed-4848-ae03-1c48d1435475
# ╠═ea51a779-fdaa-430a-85da-969f68786abb
# ╠═8868e979-ae04-4716-b0db-6ec8dcc2d677
# ╠═1da9ed3c-0e22-4e76-8d8f-23c4a7ef8b72
# ╠═0aa863d6-bb55-4b14-aa8f-f37b0a2371ed
# ╠═794f5a15-350a-4677-ad54-6e1a446ccd25
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
