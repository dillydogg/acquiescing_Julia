### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ ed3520d2-9449-11ec-124e-392831301505
test_this = string(1234567890987654321)

# ╔═╡ e910363e-0436-4bc3-80b1-1a12c6536124
len_test = length(test_this)

# ╔═╡ 2d84ad99-3140-436f-94c5-9cf13f0847be
round(len_test / 2)

# ╔═╡ 97a433ca-b193-49e1-8220-f54a2717d826
Int(floor(len_test/2))

# ╔═╡ 20d3b90e-9024-41a7-83ef-a489f00f453e
test_this[end:-1:Int(ceil(len_test/2))]

# ╔═╡ 4a70fa4c-f5c6-40cb-9379-c96a5db48da5
test_this[1:Int(ceil(len_test/2))]

# ╔═╡ a27449d3-f5a3-4cd2-bf2d-84d2245a9a1d
function palindrome_test(x)
	x = string(x)
	string_len = length(x)
	half_len = Int(ceil(string_len/2))
	if x[1:half_len] == x[end:-1:begin+half_len]
		return 1
	else
		return 0
	end
end

# ╔═╡ 075564f5-be5f-4d54-ad98-4c294fe8146f
palindrome_test(1234567890987654321)

# ╔═╡ f19745d1-acfb-45ea-81ad-32a5cac1d3e5
tenner = string(1234567890987654321)

# ╔═╡ c340a884-d5de-440b-a672-1598fb3eda1e
palindrome_test(9009)

# ╔═╡ a1651f26-b6a0-496f-9a7b-d71fc0caa499
Int(ceil(length(string(9009))/2))

# ╔═╡ 346d85bc-b519-4850-9f27-24d072fe93f0
ninty = string(9009)

# ╔═╡ bb1a6aac-6ec3-47cb-9f5b-1360cee366b9
ninty[1:2]

# ╔═╡ 660c8990-6f7c-4003-a0b8-34906d4afe50
ninty[end:-1:begin+2]

# ╔═╡ 0c3ac4be-1fad-424b-853b-c3c52cab89fb
function pali_prods(a, b)
	prod = a * b
	return palindrome_test(prod)
end

# ╔═╡ cb58f76e-acac-4c35-9d86-ef68128f80d3
arr = []

# ╔═╡ e6410e08-1ba4-431c-a450-4b3548c26b72
for a in 1000:10000
	for b in 1000:10000
		if pali_prods(a, b) == 1
			push!(arr, (a * b))
		end
	end
end

# ╔═╡ ad3e012d-aa53-495e-baa3-7af6661c6ed9
maximum(arr)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╠═ed3520d2-9449-11ec-124e-392831301505
# ╠═e910363e-0436-4bc3-80b1-1a12c6536124
# ╠═2d84ad99-3140-436f-94c5-9cf13f0847be
# ╠═97a433ca-b193-49e1-8220-f54a2717d826
# ╠═20d3b90e-9024-41a7-83ef-a489f00f453e
# ╠═4a70fa4c-f5c6-40cb-9379-c96a5db48da5
# ╠═a27449d3-f5a3-4cd2-bf2d-84d2245a9a1d
# ╠═075564f5-be5f-4d54-ad98-4c294fe8146f
# ╠═f19745d1-acfb-45ea-81ad-32a5cac1d3e5
# ╠═c340a884-d5de-440b-a672-1598fb3eda1e
# ╠═a1651f26-b6a0-496f-9a7b-d71fc0caa499
# ╠═346d85bc-b519-4850-9f27-24d072fe93f0
# ╠═bb1a6aac-6ec3-47cb-9f5b-1360cee366b9
# ╠═660c8990-6f7c-4003-a0b8-34906d4afe50
# ╠═0c3ac4be-1fad-424b-853b-c3c52cab89fb
# ╠═cb58f76e-acac-4c35-9d86-ef68128f80d3
# ╠═e6410e08-1ba4-431c-a450-4b3548c26b72
# ╠═ad3e012d-aa53-495e-baa3-7af6661c6ed9
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
