### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ 5d892272-f7da-4a62-bf1b-addc05aa3f6a
using PlutoUI

# ╔═╡ eea7a572-e8db-4901-bd4c-9dcb6a5aa4ab
n = 17

# ╔═╡ a4ed7d62-ab71-4019-8f31-d447127f16f7
n

# ╔═╡ 4ad5e0ae-a008-493c-bd91-8546a162cb2e
"Greetings"^3

# ╔═╡ 1f774cb3-8ebc-43c3-981f-08f1abeaa107
x = 278

# ╔═╡ e74487dd-a637-4fec-9730-49ac7a862c8d
x * n

# ╔═╡ d04f21d8-0130-46d8-ab17-4841fe0439be
r = 5

# ╔═╡ 7255d994-1240-4828-b987-678827089c0f
4 / 3 * π * r^3

# ╔═╡ 307a5f1d-1c54-4e33-942b-a8476fa37ff1
typeof("32")

# ╔═╡ 5da54919-8c69-4bc6-aefe-ffaf9cd60138
typeof(parse(Int64, "32"))

# ╔═╡ d9b6fa2d-de5b-4c82-9bfd-f39fed0a8bbb
float(32)

# ╔═╡ c8a6793f-db02-477f-812f-001d6ce6906e
float("32")

# ╔═╡ 27a488cc-70be-44df-8d96-c7847e70b204
string(32)

# ╔═╡ a4215602-a35a-455f-8735-dad26753a365
ℯ

# ╔═╡ 215c11b2-a76a-4f69-832f-0d759225d064
log(ℯ)

# ╔═╡ 87f7ffad-7f45-4239-bc22-3d9ae1e8da3c
function printlyrics()
	println("This is the first line of my song.")
	println("And here is my second line bay-bee.")
end

# ╔═╡ 95eaac11-1064-4a63-8676-ab1e7c4bdd15
with_terminal() do #This is from PlutoUI
printlyrics()
end

# ╔═╡ 352bb1fe-0154-4344-b785-60792a5d3a65
function repeatlyrics(x)
	for rep in 1:x
		println("Repetition # : " * string(rep))
		printlyrics()
	end
end

# ╔═╡ 0bfb7028-7619-4e7b-a030-768098cd348f
with_terminal() do
	repeatlyrics(25)
end

# ╔═╡ 2e01d2a9-3125-48f9-ae47-3f2aa62a4473
function rightjustify(s)
	string_length = length(s)
	num_spaces = 70-string_length
	println(" "^num_spaces * s)
end

# ╔═╡ 83969c39-40dd-4809-bdf8-d670a32a92bd
with_terminal() do
	rightjustify("broski")
end

# ╔═╡ 1632917f-3a4a-4e58-ae90-de406cfe1a01
with_terminal() do
	rightjustify("hello my fellow humans")
end

# ╔═╡ 9606096f-ee8b-4e79-a149-93853a256e5a
function dotwice(f)
    f()
    f()
end

# ╔═╡ 7d4f2ad4-5d6f-4863-b694-b67f9a31f549
function printspam()
    println("spam")
end

# ╔═╡ 0a4cf339-6ed5-46d1-a2a0-c6693e12e24b
with_terminal() do
	dotwice(printspam)
end

# ╔═╡ 87086793-b333-43a1-88fe-9bcfe71f324d
function printtwice(bruce)
    println(bruce)
    println(bruce)
end

# ╔═╡ 2474990b-a733-42a7-a91d-5e15a42d7adb
function dotwotimes(s)
    printtwice(s)
	printtwice(s)
end

# ╔═╡ fd8d69d7-297f-48a4-945a-5d092158ad8b
with_terminal()	do
	dotwotimes("spam")
end

# ╔═╡ c268fbf5-1f63-404c-8cbd-346e9032b406
function dofour(f, v)
	f(v)
	f(v)
	f(v)
	f(v)
end

# ╔═╡ 5797bf4b-f718-4564-9db3-14b6d0bd15ee
dofour(println, "hello my dudes")

# ╔═╡ 0225dce3-0dc5-4544-b0a7-727482cbaf7c
function printrow(cols)
#	println("+ ", ("- "^4), "+", (" ", ("- "^4), "+")^(cols-1))
	println("|", (" "^9), "|", string(" "^9, "|")^(cols-1))
	println("|", (" "^9), "|", string(" "^9, "|")^(cols-1))
	println("|", (" "^9), "|", string(" "^9, "|")^(cols-1))
	println("|", (" "^9), "|", string(" "^9, "|")^(cols-1))
	println("+ ", ("- "^4), "+", string(" ", ("- "^4), "+")^(cols-1))
end

# ╔═╡ bf17e8e7-51c5-4bdf-b10a-5e3e5de98bad
function printgrid(rows, columns)
	println("+ ", ("- "^4), "+", string(" ", ("- "^4), "+")^(columns-1))
	printrow(columns)
	for row in 1:rows-1
		printrow(columns)
	end
end

# ╔═╡ d465ed83-0127-4376-9344-619f56ca50da
with_terminal() do 
	printgrid(3, 7)
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.34"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "13468f237353112a01b2d6b32f3d0f80219944aa"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8979e9802b4ac3d58c503a20f2824ad67f9074dd"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.34"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╠═5d892272-f7da-4a62-bf1b-addc05aa3f6a
# ╠═eea7a572-e8db-4901-bd4c-9dcb6a5aa4ab
# ╠═a4ed7d62-ab71-4019-8f31-d447127f16f7
# ╠═4ad5e0ae-a008-493c-bd91-8546a162cb2e
# ╠═1f774cb3-8ebc-43c3-981f-08f1abeaa107
# ╠═e74487dd-a637-4fec-9730-49ac7a862c8d
# ╠═d04f21d8-0130-46d8-ab17-4841fe0439be
# ╠═7255d994-1240-4828-b987-678827089c0f
# ╠═307a5f1d-1c54-4e33-942b-a8476fa37ff1
# ╠═5da54919-8c69-4bc6-aefe-ffaf9cd60138
# ╠═d9b6fa2d-de5b-4c82-9bfd-f39fed0a8bbb
# ╠═c8a6793f-db02-477f-812f-001d6ce6906e
# ╠═27a488cc-70be-44df-8d96-c7847e70b204
# ╠═a4215602-a35a-455f-8735-dad26753a365
# ╠═215c11b2-a76a-4f69-832f-0d759225d064
# ╠═87f7ffad-7f45-4239-bc22-3d9ae1e8da3c
# ╠═95eaac11-1064-4a63-8676-ab1e7c4bdd15
# ╠═352bb1fe-0154-4344-b785-60792a5d3a65
# ╠═0bfb7028-7619-4e7b-a030-768098cd348f
# ╠═2e01d2a9-3125-48f9-ae47-3f2aa62a4473
# ╠═83969c39-40dd-4809-bdf8-d670a32a92bd
# ╠═1632917f-3a4a-4e58-ae90-de406cfe1a01
# ╠═9606096f-ee8b-4e79-a149-93853a256e5a
# ╠═7d4f2ad4-5d6f-4863-b694-b67f9a31f549
# ╠═0a4cf339-6ed5-46d1-a2a0-c6693e12e24b
# ╠═87086793-b333-43a1-88fe-9bcfe71f324d
# ╠═2474990b-a733-42a7-a91d-5e15a42d7adb
# ╠═fd8d69d7-297f-48a4-945a-5d092158ad8b
# ╠═c268fbf5-1f63-404c-8cbd-346e9032b406
# ╠═5797bf4b-f718-4564-9db3-14b6d0bd15ee
# ╠═0225dce3-0dc5-4544-b0a7-727482cbaf7c
# ╠═bf17e8e7-51c5-4bdf-b10a-5e3e5de98bad
# ╠═d465ed83-0127-4376-9344-619f56ca50da
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
