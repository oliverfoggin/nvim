# NeoVim setup for iOS Development

This setup uses a combination of set ups from two different tutorials...
1. https://www.josean.com/posts/terminal-setup
2. https://www.josean.com/posts/how-to-setup-neovim-2024
3. https://wojciechkulik.pl/ios/the-complete-guide-to-ios-macos-development-in-neovim

## Steps for setting up this config

If you've got in a tangle with a previous installation of nvim and want to start again then you can do... `rm -rf ~/.config/nvim` and it will delete everything.

0. Clone this repo into `~/.config/nvim`.
1. Follow the steps from the "terminal-setup" link above.
2. You will need to install various apps using `brew`. Uses these commands...

```
// All of these are from Josean's site.
brew install font-meslo-lg-nerd-font
// Then open iTerm2 settings with CMD+, and under Profiles > Text change the font to MesloLGS Nerd Font Mono
brew install neovim
brew install ripgrep
brew install node
brew install jesseduffield/lazygit/lazygit
// The rest is from Wojciech's site with some extras that I needed to do also.
brew install xcode-build-server
brew install xcbeautify
brew install ruby
brew install pipx
gem install xcodeproj
pipx install pymobiledevice3
brew install swiftlint
```

For me, the `pymobiledevice3` install failed. I don't think that matters though.

3. Download the latest `darwin` compatible release from here... https://github.com/vadimcn/codelldb/releases.
4. Save it to `~/Utils`.
5. Rename it to change the file extension from "vsix" to "zip".
6. Extract the zip archive.
7. You may need to edit the `lua/foggin/plugins/nvim-dap.lua` file to update the location under the "TODO" comment.
8. Update line 13 in `lua/foggin/plugins/nvim-dap.lua` to make sure that the `Xcode` location is correct.

Here you should be able to open `nvim` and everything will install for you using Lazy.

This is where I ran into trouble with Mac blocking certain parts of the app.

9. Run this command in terminal...
```
cd ~/Utils/codelldb-darwin-arm64/extension/adapter`
./codelldb --port 13000
```
For me this gave me an error and popped up a dialog in MacOS from the Gatekeeper blocking this from running.

If this happens...

10. Open system settings and navigation to Gatekeeper.
11. You will see in there that it blocked something. Hit Allow. The try again. I had to do this several times before it would successfully work.

Once you're here everything *should* work.

Best of luck.
