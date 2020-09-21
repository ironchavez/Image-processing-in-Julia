### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 43f6cbf0-f450-11ea-24e3-7be534b29d78
begin
	using Images
	mario=load("bowser.jpg")
end

# ╔═╡ 75d7d9b0-f451-11ea-0a24-e36cb28eb1b0
size(mario)

# ╔═╡ 81cc0022-f451-11ea-2fdf-2df51659e751
bowser_head=mario[4:200,150:300]

# ╔═╡ 81673850-f4a8-11ea-3257-2f5249264745
typeof(bowser_head)

# ╔═╡ bb2971c0-f4a8-11ea-1a1f-61372cdcd647
RGBX(0.7, 0.4, 0.9)

# ╔═╡ 0edd0e80-f4a9-11ea-06ca-e70e3dce3d4b
size(bowser_head)

# ╔═╡ 264cd000-f4a9-11ea-2a59-1d69f2d62cbf
bowser_head[90:120,55:85]

# ╔═╡ 7fba2f22-f4a9-11ea-29b1-6bbd48792407
pic=fill(bowser_head,3,3)

# ╔═╡ 94feac32-f4a9-11ea-2197-47ec2138d740
typeof(pic)

# ╔═╡ 9f908380-f4a9-11ea-1006-0971c6965909
size(pic)

# ╔═╡ b80fe040-f4a9-11ea-3174-27a9809c9d03
pis=[reverse(bowser_head, dims=2) bowser_head; reverse(bowser_head, dims=2) bowser_head]

# ╔═╡ d2203d40-f4a9-11ea-3a96-89b262926558
typeof(pis)

# ╔═╡ dda240f0-f4a9-11ea-0fba-11db3287df3b
size(pis)

# ╔═╡ 75168810-f4aa-11ea-00f4-5bb8fdcda8a1
bowser=copy(mario)

# ╔═╡ 969b4fc0-f4aa-11ea-0224-338e26f436b3
size(bowser)

# ╔═╡ 69ffacd0-f4ab-11ea-00fe-23790a8cb57d
bowser

# ╔═╡ afc23720-f4aa-11ea-271d-03ebdd22db29
black = RGB(1,0.00,0.79)

# ╔═╡ 7fbbe760-f4aa-11ea-3559-c5f40d1ed2de
	for i in 1:429
		bowser[i,1]=black
	end

# ╔═╡ 3ab496be-f4ab-11ea-339a-6396f82d8bbf
for i in 1:520
		bowser[420,i]=black
	end

# ╔═╡ 9d79a3e0-f4c9-11ea-244e-0fee94a93fd8
#broadcast function
begin
	newb=mario
	newb[100:140, 100:140] .= black
	newb
end

# ╔═╡ 46eade30-f4ca-11ea-0541-79defcc4a784
#function to extract 1 colour
function modify(c)
	return RGB(c.b,c.r,0)
end

# ╔═╡ e2bd0130-f4ca-11ea-054c-4b3894fecc22
modblack=modify(black)

# ╔═╡ 256fe510-f4cb-11ea-2e95-1d2691d1ceb0
modblack.g

# ╔═╡ 828e1730-f4cb-11ea-0f9f-7db9ecae0bf6
newb2= modify.(bowser)
#brodcasting the function over the image

# ╔═╡ f0070160-f4cf-11ea-3c8f-9d7dc77e7357
	@bind xb html"<input type = range>"

# ╔═╡ 68dfbe10-f4d0-11ea-370f-8796af62513f
xb

# ╔═╡ 91ec8302-f4d1-11ea-3d32-c1b78c6fafd2
rand([modblack, black], 4, 6)

# ╔═╡ da379780-f4d1-11ea-26b8-1bdc5f94029c
rand([bowser,newb, newb2], 4,7)

# ╔═╡ Cell order:
# ╠═43f6cbf0-f450-11ea-24e3-7be534b29d78
# ╠═75d7d9b0-f451-11ea-0a24-e36cb28eb1b0
# ╠═81cc0022-f451-11ea-2fdf-2df51659e751
# ╠═81673850-f4a8-11ea-3257-2f5249264745
# ╠═bb2971c0-f4a8-11ea-1a1f-61372cdcd647
# ╠═0edd0e80-f4a9-11ea-06ca-e70e3dce3d4b
# ╠═264cd000-f4a9-11ea-2a59-1d69f2d62cbf
# ╠═7fba2f22-f4a9-11ea-29b1-6bbd48792407
# ╠═94feac32-f4a9-11ea-2197-47ec2138d740
# ╠═9f908380-f4a9-11ea-1006-0971c6965909
# ╠═b80fe040-f4a9-11ea-3174-27a9809c9d03
# ╠═d2203d40-f4a9-11ea-3a96-89b262926558
# ╠═dda240f0-f4a9-11ea-0fba-11db3287df3b
# ╠═75168810-f4aa-11ea-00f4-5bb8fdcda8a1
# ╠═969b4fc0-f4aa-11ea-0224-338e26f436b3
# ╠═7fbbe760-f4aa-11ea-3559-c5f40d1ed2de
# ╠═3ab496be-f4ab-11ea-339a-6396f82d8bbf
# ╠═69ffacd0-f4ab-11ea-00fe-23790a8cb57d
# ╠═9d79a3e0-f4c9-11ea-244e-0fee94a93fd8
# ╠═afc23720-f4aa-11ea-271d-03ebdd22db29
# ╠═46eade30-f4ca-11ea-0541-79defcc4a784
# ╠═e2bd0130-f4ca-11ea-054c-4b3894fecc22
# ╠═256fe510-f4cb-11ea-2e95-1d2691d1ceb0
# ╠═828e1730-f4cb-11ea-0f9f-7db9ecae0bf6
# ╠═f0070160-f4cf-11ea-3c8f-9d7dc77e7357
# ╠═68dfbe10-f4d0-11ea-370f-8796af62513f
# ╠═91ec8302-f4d1-11ea-3d32-c1b78c6fafd2
# ╠═da379780-f4d1-11ea-26b8-1bdc5f94029c
