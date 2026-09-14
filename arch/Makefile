TARGET = $(HOME)/.config

STOW = stow -d $(CURDIR)
.RECIPEPREFIX := >
install:
>$(STOW) -t $(TARGET)/nvim nvim
>$(STOW) -t $(TARGET)/kitty kitty
>$(STOW) -t $(TARGET)/fastfetch fastfetch
>$(STOW) -t $(TARGET)/tmux tmux
>$(STOW) -t $(TARGET)/niri niri
>$(STOW) -t $(TARGET)/hypr hypr
>$(STOW) -t $(TARGET)/DankMaterialShell DankMaterialShell
remove:
>$(STOW) -D -t $(TARGET)/nvim nvim
>$(STOW) -D -t $(TARGET)/kitty kitty
>$(STOW) -D -t $(TARGET)/fastfetch fastfetch
>$(STOW) -D -t $(TARGET)/tmux tmux
>$(STOW) -D -t $(TARGET)/niri niri
>$(STOW) -D -t $(TARGET)/hypr hypr
>$(STOW) -D -t $(TARGET)/DankMaterialShell DankMaterialShell
restow:
>$(STOW) -R -t $(TARGET)/nvim nvim
>$(STOW) -R -t $(TARGET)/kitty kitty
>$(STOW) -R -t $(TARGET)/fastfetch fastfetch
>$(STOW) -R -t $(TARGET)/tmux tmux
>$(STOW) -R -t $(TARGET)/niri niri
>$(STOW) -R -t $(TARGET)/hypr hypr
>$(STOW) -R -t $(TARGET)/DankMaterialShell DankMaterialShell
