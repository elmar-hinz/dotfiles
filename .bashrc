PRIVATE=$HOME/.bashrc.private

for file in $HOME/.bashrc.d/*; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done; 

[ -r "$PRIVATE" ] && [ -f "$PRIVATE" ] && source "$PRIVATE";
