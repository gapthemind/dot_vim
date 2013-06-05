## Vimrc files
1. Clone repo
   ```
   $ git clone ...
   ```
2. Cd to .vim and create alias
   ```
   $ cd .vim
   $ ln -s vimrc ~/.vimrc
   ```

3. Setup [Vundle]:

     ```
     $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
     ```

4. Install plugins 
     ```
     vim +BundleInstall +qall
     ```
