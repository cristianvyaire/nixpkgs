{ stdenv, fetchurl, pkgconfig, expat, gettext, libiconvOrEmpty, dbus, glib }:

stdenv.mkDerivation rec {
  name = "dbus-glib-0.104";

  src = fetchurl {
    url = "${meta.homepage}/releases/dbus-glib/${name}.tar.gz";
    sha256 = "1xi1v1msz75qs0s4lkyf1psrksdppa3hwkg0mznc6gpw5flg3hdz";
  };

  nativeBuildInputs = [ pkgconfig gettext ];

  buildInputs = [ expat ] ++ libiconvOrEmpty;

  propagatedBuildInputs = [ dbus.libs glib ];

  doCheck = true;

  passthru = { inherit dbus glib; };

  meta = {
    homepage = http://dbus.freedesktop.org;
    license = with stdenv.lib.licenses; [ afl21 gpl2 ];
    description = "Obsolete glib bindings for D-Bus lightweight IPC mechanism";
    maintainers = [ stdenv.lib.maintainers.urkud ];
  };
}
