# keyframes
Keyframes is a compact and lightweight UI animation module for Roblox based on [TweenService](https://developer.roblox.com/en-us/api-reference/class/TweenService).

### Installation
Create the module and import the contents of ``keyframes.lua``, then specify the folder in which your animation modules will reside. The default folder path is ``game.ReplicatedStorage.modules``.

```lua
local modules = rs:WaitForChild("modules")
```

### Usage
In order to create an animation, create a new module inside of the folder. The name of the module is what the animation will be referred to. Here's an example animation:

```lua
local function keyframes(gui)
	return {
		{gui.Frame, "Out", "Quart", 0.25, {BackgroundTransparency = 0.5, Size = UDim2.new(0.5, 0, 0.5, 0)}};
		{gui.Frame.Object, "InOut", "Sine", 0.4, {Position = UDim2.new(0.5, 0, 0.5, 0)}};
		1;
		function()
			print("animation completed")
		end;
	}
end

return keyframes
```

*Tables* are keyframes and will play an animation based on the data provided. Keyframes are **synchronous**, and their arguments are as follows: ``EasingDirection``, ``EasingStyle``, ``Duration``, ``Properties``.

*Numbers* are delays and will wait for the specified amount of time in seconds.

*Functions* will execute as they are written.

In the event that you want to pass another table of keyframes to the handler, simply return another table. This is particularly useful in the event that you want to create a keyframe for a hover effect. Here's an example:

```lua
-- Hover effect!
local function keyframes(gui)
	return {
		{gui, "Out", "Sine", 0.3, {BackgroundTransparency = 0.3}};
	},
	{
		{gui, "Out", "Sine", 0.3, {BackgroundTransparency = 0}};
	}
end
```

### Methods
The only method that currently exists is ``keyframes:play()``. The arguments for this are ``instance GUIObject``, ``string AnimationName``, ``[optional] boolean Reverse`` and ``[optional] boolean Asynchronous``. Here's an example:

```lua
keyframes:play(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui").ScreenGui, "animationName", false, true)
```

### Questions?
Send me a DM on Twitter, [@unrooot](https://twitter.com/unrooot).
