echo > /tmp/hyprland-supergfxctl-script-user

if [ "$(supergfxctl -g)" = "Hybrid" ]; then
	echo "# Running in hybrid" >> /tmp/hyprland-supergfxctl-script-user
	echo "env = AQ_DRM_DEVICES, /dev/dri/card1" >> /tmp/hyprland-supergfxctl-script-user
elif [ "$(supergfxctl -g)" = "AsusMuxDgpu" ]; then
	echo "# Running in mux" >> /tmp/hyprland-supergfxctl-script-user
	echo "env = LIBVA_DRIVER_NAME, nvidia" >> /tmp/hyprland-supergfxctl-script-user
	echo "env = __GLX_VENDOR_LIBRARY_NAME, nvidia" >> /tmp/hyprland-supergfxctl-script-user
fi
