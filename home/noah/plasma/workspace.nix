inputs: {
  programs.plasma.workspace = {
    theme = "breeze-dark";
    lookAndFeel = "org.kde.breezedark.desktop";

    # https://forum.endeavouros.com/t/plasma-6-how-to-customise-the-splashscreen-a-simple-guide/61377
    splashScreen = {
      engine = "none";
      theme = "None";
    };
  };
}
