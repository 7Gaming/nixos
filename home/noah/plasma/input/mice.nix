inputs: {
  programs.plasma.input.mice = [
    {
      enable = true;
      # Mouse specific data found at /proc/bus/input/devices
      name = "Logitech G203 Prodigy Gaming Mouse";
      vendorId = "046d";
      productId = "c084";

      acceleration = -0.25;

      accelerationProfile = "none";
      middleButtonEmulation = false;
      naturalScroll = false;
      leftHanded = false;
    }
  ];
}
