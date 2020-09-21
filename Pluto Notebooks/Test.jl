### A Pluto.jl notebook ###
# v0.11.12

using Markdown
using InteractiveUtils

# ╔═╡ 6625fff2-f349-11ea-30b9-0768a5ced803
begin
	using Images
	mario = load("mario.jpg")
end

# ╔═╡ 1f5c02a0-f348-11ea-2b13-b19ab77988df
mario = download (https://www.pinterest.com/pin/66357794483811590/)


# ╔═╡ bd2ed7a2-f348-11ea-1c9b-77d8fcb3654c
8*8


# ╔═╡ bc83ca90-f348-11ea-3de7-499d890986f3
url = "https://www.pinterest.com/pin/66357794483811590/"

# ╔═╡ 432609f0-f349-11ea-0bd6-c15079a1e47c
download (url, "mario.jpg")


# ╔═╡ 99677d7e-f349-11ea-1e97-b9550a4d0e63
begin
	import Pkg;
	Pkg.add("Images")
end

# ╔═╡ aac9d700-f34c-11ea-2ead-31d52609c6a0
clc


# ╔═╡ Cell order:
# ╠═1f5c02a0-f348-11ea-2b13-b19ab77988df
# ╠═bd2ed7a2-f348-11ea-1c9b-77d8fcb3654c
# ╠═bc83ca90-f348-11ea-3de7-499d890986f3
# ╠═432609f0-f349-11ea-0bd6-c15079a1e47c
# ╠═6625fff2-f349-11ea-30b9-0768a5ced803
# ╠═99677d7e-f349-11ea-1e97-b9550a4d0e63
# ╠═aac9d700-f34c-11ea-2ead-31d52609c6a0
