# Neovim 配置

zhenhuli

使用方法：

1.在 `~/.config` 目录下建立nvim的软链接
  ```shell
  ln -s 此仓库的克隆地址/nvim ~/.config/nvim
  ```
2.执行 `nvim +PackerSync` 命令， 根据网络条件的不同，可能需要多次执行本命令，直到所有插件下载完成

3.通过`LspInstallInfo`命令安装对应lsp svr, 接着选中对应语言的server，如cpp为clangd， 按i执行安装

4.通过`DIInstall xxx`命令安装对应语言的 `debugger`, 除此外，需要在 `~/.dotfiles/nvim/lua/user/dap/`目录下新建对应语言的配置文件（已配置好c/cpp,go,python), 同时更新 `dap-config.lua` 文件下的 `config_debuggers()` 函数。



# 额外说明

此仓库bin目录下安装如下可执行文件:
- fd          -- telescope依赖
- glow        -- markdown预览依赖
- lazygit     -- git操作
- rg          -- telescope 依赖
- gh


如果要是 跳转c语言 函数定义、声明 不成功，

首先使用 compiledb 对 makefile 生成 compile_commands.json 文件，http://cattiek.site/2019/03/20/%E5%A6%82%E4%BD%95%E7%94%9F%E6%88%90compile-commands-json/



例如，在项目根目录下，生成JSON文件，但不编译项目：

1
$ compiledb -n make
