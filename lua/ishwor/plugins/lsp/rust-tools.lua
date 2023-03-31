local rt = require("rust-tools")

local v = vim.keymap;
local buf = vim.lsp.buf;

rt.setup({
    server = {
        on_attach = function(_, buffer)
            local key_map_opts = { buffer = buffer }

            -- Hover actions
            v.set("n", "<C-space>", rt.hover_actions.hover_actions, key_map_opts)

            -- Code action groups
            v.set("n", "<Leader>a", rt.code_action_group.code_action_group, key_map_opts)

            v.set("n", "K", buf.hover, key_map_opts)
            v.set("n", "mi", buf.implementation, key_map_opts)
            v.set("n", "<Leader>k", buf.signature_help, key_map_opts)
            v.set("n", "mtd", buf.type_definition, key_map_opts)
            v.set("n", "mr", buf.references, key_map_opts)
            v.set("n", "ms", buf.document_symbol, key_map_opts)
            v.set("n", "mW", buf.workspace_symbol, key_map_opts)
            v.set("n", "md", buf.definition, key_map_opts)

            v.set("n", "<", vim.diagnostic.goto_prev, key_map_opts)
            v.set("n", ">", vim.diagnostic.goto_next, key_map_opts)
        end,
    },
    settings = {
        -- to enable rust-analyzer settings visit:
        -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
        ["rust-analyzer"] = {
            -- enable clippy on save
            checkOnSave = {
                command = "clippy",
            },
        },
    },
    tools = {
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            auto = true,
            show_parameter_hints = true,
        }
    },
})
