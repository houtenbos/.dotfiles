
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-+>"] = ":w<cr>"
lvim.keys.normal_mode["-"] = ":vertical resize -5<cr>"
lvim.keys.normal_mode["="] = ":vertical resize +5<cr>"
lvim.keys.normal_mode["U"] = ":redo<cr>"

-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
