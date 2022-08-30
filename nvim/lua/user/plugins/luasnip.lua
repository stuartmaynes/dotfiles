local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
    history = true,
    update_events = "TextChanged, TextChangedI",
    enable_autosnippets = true,
}

vim.keymap.set({ "i", "s" }, "<C-z>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-x>", function()
    if ls.jumpable() then
        ls.jump()
    end
end, { silent = true })

vim.keymap.set("i", "<C-c>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, { silent = true })

