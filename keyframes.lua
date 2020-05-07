-- @unrooot // may 5th, 2020
-- github.com/unrooot/keyframes

local rs = game:GetService("ReplicatedStorage")
local ts = game:GetService("TweenService")
local modules = rs:WaitForChild("modules")

local format = string.format
local tinfo = TweenInfo.new

local lib = {}
local path = modules:GetChildren()

local function getModule(query)
	for _,module in pairs(modules:GetChildren()) do
		if module.Name == query then
			return module
		end
	end
end

local function playAnimation(instance, data)
	for _,v in pairs(data) do
		if typeof(v) == "table" then
			-- convert to enum (if needed)
			local direction, style = v[1], v[2]
			if typeof(direction) == "string" then
				v[1] = Enum.EasingDirection[direction]
			end

			if typeof(style) == "string" then
				v[2] = Enum.EasingStyle[style]
			end

			-- play animation
			ts:Create(instance, tinfo(v[3], v[2], v[1]), v[4]):Play()
		elseif typeof(v) == "number" then
			wait(v)
		elseif typeof(v) == "function" then
			v()
		end
	end
end

function lib:play(instance, animation)
	if typeof(animation) == "string" then
		local module = getModule(animation)
		if module then
			local keyframes = require(module)
			playAnimation(instance, keyframes)
		else
			warn(format("[keyframes] animation %s not found.", animation))
		end
	elseif typeof(animation) == "table" then
		playAnimation(instance, animation)
	end
end

return lib