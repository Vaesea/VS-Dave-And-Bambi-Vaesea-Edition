local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('bg', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('bg', 'uWaveAmplitude', 0.1)
	setShaderFloat('bg', 'uFrequency', 5)
	setShaderFloat('bg', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('bg', 'uTime', os.clock())
	end