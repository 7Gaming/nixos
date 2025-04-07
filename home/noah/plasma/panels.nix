inputs: {
  programs.plasma.panels = [
    {
      height = 32;
      location = "top";
      alignment = "center";
      floating = false;
      hiding = "normalpanel";
      lengthMode = "fill";
      opacity = "opaque";

      widgets = [
        # "org.kde.plasma.kickoff"
        # "org.kde.plasma.pager"
        # "org.kde.plasma.icontasks"
        "org.kde.plasma.marginsseparator"
        "org.kde.plasma.digitalclock"
        "org.kde.plasma.marginsseparator"
        "org.kde.plasma.systemtray"
        # "org.kde.plasma.showdesktop"
      ];
    }

    {
      height = 44;
      location = "bottom";
      alignment = "center";
      floating = true;
      hiding = "autohide";
      lengthMode = "fit";
      opacity = "opaque";

      widgets = [
        # "org.kde.plasma.kickoff"
        # "org.kde.plasma.pager"
        "org.kde.plasma.icontasks"
        # "org.kde.plasma.marginsseparator"
        # "org.kde.plasma.systemtray"
        # "org.kde.plasma.digitalclock"
        # "org.kde.plasma.showdesktop"
      ];
    }
  ];
}
