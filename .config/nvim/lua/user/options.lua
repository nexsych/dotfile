vim.opt.mouse = "a"
vim.opt.splitbelow = true
vim.opt.splitright = true
--vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
--vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 32
vim.opt.clipboard = "unnamedplus"

vim.cmd [[autocmd BufWritePost /home/nexsych/.config/sxhkd/sxhkdrc !pkill -SIGUSR1 sxhkd]]
vim.cmd [[autocmd BufWritePost /home/nexsych/.config/dunst/dunstrc !pkill dunst ; notify-send "HeLLO FRieND" "ThIS iS aN eXaMPle nOTiFiCATioN."]]
vim.cmd [[autocmd BufWritePost /home/nexsych/.config/x11/xresources !xrdb /home/nexsych/.config/x11/xresources ; xdotool key super+F5]]
