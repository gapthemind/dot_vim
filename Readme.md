## Vimrc files
1. Clone repo
   ```
   $ git clone git://github.com/gapthemind/dot_vim.git ~/.vim
   ```
2. Create .vimrc alias
   ```
   $ ln -s ~/.vim/vimrc ~/.vimrc
   ```
3. Optionally add extra mappings, if you like what you see
   ```
   $ ln -s ~/.vim/vimrc.local ~/.vimrc.local
   ```

4. Setup [Vundle]:

   ```
   $ cd .vim
   $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
   ```

5. Install plugins 
   ```
   vim +BundleInstall +qall
   ```
