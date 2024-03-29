{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "scott";
  home.homeDirectory = with pkgs.stdenv;
    if isDarwin then "/Users/scott" else "/home/scott";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

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

    pkgs.fd
    pkgs.nil
    pkgs.nixfmt
    pkgs.nodePackages_latest.bash-language-server
    pkgs.nodePackages_latest.prettier
    pkgs.nodePackages_latest.pyright
    pkgs.nodePackages_latest.yaml-language-server
    pkgs.shellcheck
    pkgs.taplo
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

    "${config.xdg.configHome}/helix/themes/jellow.toml".source =
      files/config/helix/themes/jellow.toml;

    "${config.xdg.configHome}/helix/themes/tommocha.toml".source =
      files/config/helix/themes/tommocha.toml;

    "${config.xdg.configHome}/kitty/themes/jellow.conf".source =
      files/config/kitty/themes/jellow.conf;

    "${config.xdg.configHome}/kitty/themes/tommocha.conf".source =
      files/config/kitty/themes/tommocha.conf;

    ".streamlit/config.toml".text = ''
      [browser]
      gatherUsageStats = false
    '';
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
      fetch.prune = true;
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
    };
    ignores = [ ".DS_Store" ];
  };

  programs.helix = {
    enable = true;
    languages = {
      language-server = {
        gopls = { config.formatting.gofumpt = true; };
        pyright = {
          command = "pyright-langserver";
          args = [ "--stdio" ];
        };
      };
      language = [
        {
          name = "go";
          formatter.command = "goimports";
        }
        {
          name = "markdown";
          auto-format = true;
          formatter = {
            command = "prettier";
            args = [ "--parser=markdown" "--stdin" ];
          };
        }
        {
          name = "nix";
          auto-format = true;
          formatter.command = "nixfmt";
        }
        {
          name = "python";
          auto-format = true;
          formatter = {
            command = "ruff";
            args = [ "format" "-" ];
          };
          language-servers = [{ name = "pyright"; }];
        }
        {
          name = "yaml";
          auto-format = true;
          formatter = {
            command = "prettier";
            args = [ "--parser=yaml" "--stdin" ];
          };
        }
      ];
    };
    settings = {
      editor = {
        bufferline = "multiple";
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        file-picker.hidden = false;
        line-number = "relative";
        rulers = [ 80 ];
        soft-wrap.enable = true;
      };
      # Fix for https://github.com/helix-editor/helix/issues/6551
      keys.insert."C-[" = "normal_mode";
      theme = "tommocha";
    };
  };

  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrains Mono";
      package = pkgs.jetbrains-mono;
      size = 14;
    };
    settings = {
      tab_bar_edge = "top";
      tab_bar_style = "slant";
      active_tab_font_style = "bold";
      macos_show_window_title_in = "window";
      enabled_layouts = builtins.concatStringsSep "," [
        "fat"
        "tall"
        "grid"
        "horizontal"
        "vertical"
      ];
      window_border_width = "3px";
      window_padding_width = "3";
      macos_option_as_alt = "left";
      modify_font = "cell_height -1px";
    };
    extraConfig = "include ${config.xdg.configHome}/kitty/themes/tommocha.conf";
  };

  programs.ripgrep = {
    enable = true;
    arguments = [ "--max-columns-preview" "--max-columns=140" "--smart-case" ];
  };

  programs.ruff = {
    enable = true;
    settings.format.skip-magic-trailing-comma = true;
  };

  programs.starship = {
    enable = true;
    settings = {
      git_branch = { format = "[$branch(:$remote_branch)]($style)"; };
      git_status = { format = "([$all_status$ahead_behind]($style)) "; };
      golang = {
        symbol = "";
        version_format = "go\${major}.\${minor}";
      };
      line_break = { disabled = true; };
      nix_shell = { format = "[\\(nix\\)]($style) "; };
      package = { disabled = true; };
      python = {
        symbol = "";
        version_format = "py\${major}.\${minor}";
      };
    };
  };

  programs.zellij.enable = true;

}
