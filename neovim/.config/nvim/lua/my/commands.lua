local cmd = vim.api.nvim_create_user_command

cmd('ReloadConfig', 'source $MYVIMRC', {})

