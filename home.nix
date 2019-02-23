{ config, pkgs, ... }:

# https://rycee.gitlab.io/home-manager/options.html

let
  name = "Clayton Voges";
  gmail = "vogesclayton@gmail.com";
  username = "cvoges12";
  dots = "/home/cvoges12/dots";
  scripts = "/home/cvoges12/scripts";
  maildir = "/home/cvoges12/Mail";

in

{
  #accounts.email = {
  #  maildirBasePath = "${maildir}";
  #  accounts = {
  #    gmail = {
  #      address = "${gmail}";
  #      userName = "${gmail}";
  #      flavor = "gmail.com";
  #      #passwordCommand = "kpcli";
  #      primary = true;
  #      mbsync = {
  #        enable = true;
  #        expunge = "both";
  #      };
  #      realName = "Clayton Voges";
  #    };
  #  };
  #};
  programs = {
    home-manager = {
      enable = true;
    };
    git = {
      enable = true;
      userEmail = "${gmail}";
      userName = "${username}";
    };
    #mbsync = {
    #  enable = true;
    #};
    firefox = {
      enable = true;
      enableAdobeFlash = false;
    };
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      #defaultKeymap = ;
      history = {
        expireDuplicatesFirst = true;
        extended = true;
        ignoreDups = true;
        path = ".histfile";
        save = 10000;
        share = true;
      };
      initExtra = "";
      profileExtra = "";
      loginExtra = "";
      logoutExtra = "";
      #localVariables
      #sessionVariables
      #shellAliases
      oh-my-zsh = {
        enable = true;
        #plugins
        #theme
      };
      #plugins
    };
  };
}
