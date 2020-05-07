## keyframes
Keyframes is a compact and lightweight UI animation library for Roblox.

### Installation
Create the module and import the contents of ``keyframes.lua``, then specify the folder in which your animation modules will reside. The default folder path is ``game.ReplicatedStorage.modules``.

    local modules = rs:WaitForChild("modules")

### Usage
In order to create an animation, create a new module inside of the folder. The name of the module is what the animation will be referred to. Here's an example animation:

    return {
		{"Out", "Quart", 0.25, {Position = u2(0.5, 0, 0.5, 0)};
		{"InOut", "Sine", 1, {BackgroundColor3 = c3(25, 50, 5)};
		3;
		function()
			print("done!")
		end;
	}

 Tables are keyframes and will play an animation based on the data provided. Keyframes are **synchronous**, and their arguments are as follows: ``EasingDirection``, ``EasingStyle``, ``Duration``, ``Properties``.

Numbers are delays and will wait for the specified amount of time in seconds.

Functions will execute as they are written.

### Questions?
Send me a DM on Twitter, [@unrooot](https://twitter.com/unrooot).

###### Inspired by FriendlyBiscuit's private module iAnimator, except his is much, much better.