-------------------*** null-ls formatting ***----------------

local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.eslint,
	formatting.stylua,
}

null_ls.setup({
	sources = sources,
	-- below are auto formatting on save
	--
	-- on_attach = function(client)
	-- 	if client.resolved_capabilities.document_formatting then
	-- 		vim.cmd([[
	--          augroup LspFormatting
	--              autocmd! * <buffer>
	--              autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
	--          augroup END
	--          ]])
	-- 	end
	-- end,
})

---------------- *** other setup  *** ---------------
-- corresponding formatting package: stylua :only for their specific language
-- >> sudo port install stylua
-- [!]: https://ports.macports.org/port/stylua/
-- [!] first install MacPorts --> choose the current mac os pkg link
-- [!] after installation, restart shell and check if succeed
