{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "scott";
  home.homeDirectory = "/Users/scott";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/scott/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.git = {
    enable = true;
    userEmail = "scott@stevenson.io";
    userName = "Scott Stevenson";
    extraConfig = {
      commit.verbose = true;
      init.defaultBranch = "main";
    };
  };

  programs.helix = {
    enable = true;
    settings = {
      editor = {
        color-modes = true;
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        file-picker.hidden = false;
        line-number = "relative";
        soft-wrap.enable = true;
      };
      theme = "catppuccin_mocha";
    };
  };

  programs.kitty = {
    enable = true;
    font = {
      name = "Menlo";
      size = 14;
    };
    settings = {
      tab_bar_edge = "top";
      tab_bar_style = "slant";
      active_tab_font_style = "bold";
      macos_show_window_title_in = "window";
      active_tab_background = "#1e1e2e";
      active_tab_foreground = "#cdd6f4";
      inactive_tab_background = "#313244";
      tab_bar_background = "#313244";
      macos_titlebar_color = "#313244";
      enabled_layouts = builtins.concatStringsSep "," [
        "tall"
        "fat"
        "grid"
        "horizontal"
        "vertical"
      ];
      window_border_width = "4px";
      window_padding_width = "4";
      macos_option_as_alt = "left";
    };
    theme = "Catppuccin-Mocha";
  };
}
