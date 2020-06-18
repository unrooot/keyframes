local function keyframes(gui)
	return {
		{gui.Frame, "Out", "Quart", 0.25, {BackgroundTransparency = 0.5, Size = UDim2.new(0.5, 0, 0.5, 0)}};
		{gui.Frame.Object, "InOut", "Sine", 0.4, {Position = UDim2.new(0.5, 0, 0.5, 0)}};
		1;
		function()
			print("animation completed")
		end;
	},
	{
		{gui.Frame, "Out", "Quart", 0.25, {BackgroundTransparency = 0, Size = UDim2.new(0.1, 0, 0.1, 0)}};
		{gui.Frame.Object, "InOut", "Sine", 0.4, {Position = UDim2.new(0.2, 0, 0.2, 0)}};
		1;
		function()
			print("animation reversed")
		end;
	}
end

return keyframes