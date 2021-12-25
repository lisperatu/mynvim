-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sasha/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/sasha/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/sasha/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/sasha/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sasha/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["Smart-Tabs"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/Smart-Tabs",
    url = "https://github.com/vim-scripts/Smart-Tabs"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-nvim-lsp"] = {
    config = { "\27LJ\1\2Ž\1\0\0\3\0\a\0\r4\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0024\1\4\0%\2\5\0>\1\2\0027\1\6\1\16\2\0\0>\1\2\2\16\0\1\0G\0\1\0\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/ctrlp.vim",
    url = "https://github.com/ctrlpvim/ctrlp.vim"
  },
  ["denite.nvim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/denite.nvim",
    url = "https://github.com/shougo/denite.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  hardmode = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/hardmode",
    url = "https://github.com/wikitopian/hardmode"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  melange = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/melange",
    url = "https://github.com/savq/melange"
  },
  neogit = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  nerdtree = {
    config = { "\27LJ\1\2_\0\0\5\0\6\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0002\4\0\0>\0\5\1G\0\1\0\24:NERDTreeToggle<CR>\n<C-n>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin",
    url = "https://github.com/Xuyuanp/nerdtree-git-plugin"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\1\2œ\1\0\1\3\0\5\0\t7\1\0\0007\1\1\1\15\0\1\0T\2\4€4\1\2\0007\1\3\1%\2\4\0>\1\2\1G\0\1\0Cautocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\bcmd\bvim\24document_formatting\26resolved_capabilities¢\1\1\0\5\0\v\0\0194\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0001\3\3\0:\3\5\0022\3\3\0007\4\6\0007\4\a\0047\4\b\4;\4\1\0037\4\6\0007\4\a\0047\4\t\4;\4\2\3:\3\n\2>\1\2\1G\0\1\0\fsources\nblack\rprettier\15formatting\rbuiltins\14on_attach\1\0\0\0\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/oceanic-next",
    url = "https://github.com/mhartington/oceanic-next"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["poet-v"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/poet-v",
    url = "https://github.com/petobens/poet-v"
  },
  ["pudb.vim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/pudb.vim",
    url = "https://github.com/SkyLeach/pudb.vim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  sonokai = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  stellarized = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/stellarized",
    url = "https://github.com/nightsense/stellarized"
  },
  ["tender.vim"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/tender.vim",
    url = "https://github.com/jacoborus/tender.vim"
  },
  vdebug = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vdebug",
    url = "https://github.com/vim-vdebug/vdebug"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/bling/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-blade"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-blade",
    url = "https://github.com/jwalton512/vim-blade"
  },
  ["vim-flake8"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-flake8",
    url = "https://github.com/nvie/vim-flake8"
  },
  ["vim-perl"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-perl",
    url = "https://github.com/vim-perl/vim-perl"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vue"] = {
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/vim-vue",
    url = "https://github.com/posva/vim-vue"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/sasha/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
try_loadstring("\27LJ\1\2_\0\0\5\0\6\0\t4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0002\4\0\0>\0\5\1G\0\1\0\24:NERDTreeToggle<CR>\n<C-n>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "nerdtree")
time([[Config for nerdtree]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\1\2œ\1\0\1\3\0\5\0\t7\1\0\0007\1\1\1\15\0\1\0T\2\4€4\1\2\0007\1\3\1%\2\4\0>\1\2\1G\0\1\0Cautocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()\bcmd\bvim\24document_formatting\26resolved_capabilities¢\1\1\0\5\0\v\0\0194\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0001\3\3\0:\3\5\0022\3\3\0007\4\6\0007\4\a\0047\4\b\4;\4\1\0037\4\6\0007\4\a\0047\4\t\4;\4\2\3:\3\n\2>\1\2\1G\0\1\0\fsources\nblack\rprettier\15formatting\rbuiltins\14on_attach\1\0\0\0\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: cmp-nvim-lsp
time([[Config for cmp-nvim-lsp]], true)
try_loadstring("\27LJ\1\2Ž\1\0\0\3\0\a\0\r4\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0024\1\4\0%\2\5\0>\1\2\0027\1\6\1\16\2\0\0>\1\2\2\16\0\1\0G\0\1\0\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "cmp-nvim-lsp")
time([[Config for cmp-nvim-lsp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
