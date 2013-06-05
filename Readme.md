## Vimrc files
1. Clone repo
   ```
   $ git clone git://github.com/gapthemind/dot_vim.git ~/.vim
   ```
2. Create .vimrc alias
   ```
   $ ln -s ~/.vim/vimrc ~/.vimrc
   ```

3. Setup [Vundle]:

   ```
   $ cd .vim
   $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
   ```

4. Install plugins 
   ```
   vim +BundleInstall +qall
   ```
