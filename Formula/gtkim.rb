class Gtkim < Formula
  desc "Gtk+ Instant Message Widgets"
  homepage "https://bitbucket.org/rw_grim/gtkim"
  head "https://bitbucket.org/rw_grim/gtkim", :using => :hg

  depends_on "pkg-config" => :build
  depends_on "intltool" => :build
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "gettext"
  depends_on "glib"
  depends_on "gtk+3"
  depends_on "gumbo-parser"
  depends_on "gobject-introspection"

  def install
    system "meson", "build"
    system "ninja", "-C", "build"
  end
end
