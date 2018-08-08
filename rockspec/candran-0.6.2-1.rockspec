package = "candran"

version = "0.6.2-1"

description = {
	summary = "A simple Lua dialect and preprocessor.",
	detailed = [[
		Candran is a dialect of the Lua 5.3 programming language which compiles to Lua 5.3 and Lua 5.1/LuaJit. It adds several useful syntax additions which aims to make Lua faster and easier to write, and a simple preprocessor.
		Unlike Moonscript, Candran tries to stay close to the Lua syntax, and existing Lua code can run on Candran unmodified.
	]],
	license = "MIT",
	homepage = "https://github.com/Reuh/candran",
	--issues_url = "https://github.com/Reuh/candran", -- LuaRocks 3.0
	maintainer = "Étienne 'Reuh' Fildadut <fildadut@reuh.eu>",
	--labels = {} -- LuaRocks 3.0
}

source = {
	url = "git://github.com/Reuh/candran",
	tag = "v0.6.2"
}

dependencies = {
	"lua >= 5.1",
	"lpeglabel >= 1.5.0"
}

build = {
	type = "builtin",
	modules = {
		candran = "candran.lua"
	},
	install = {
		bin = { "bin/can", "bin/canc" }
	}
	--copy_directories = { "doc", "test" }
}
