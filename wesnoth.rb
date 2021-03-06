require 'formula'

class Wesnoth < Formula
  homepage 'http://www.wesnoth.org/'
  url 'http://sourceforge.net/projects/wesnoth/files/wesnoth-1.10/wesnoth-1.10.6/wesnoth-1.10.6.tar.bz2'
  sha1 'c812a55a4544b894691f37ab95cc849d015a3041'

  depends_on 'cmake' => :build
  depends_on 'gettext'
  depends_on 'pango'
  depends_on 'boost'
  depends_on 'fontconfig'
  depends_on 'sdl'
  depends_on 'sdl_image'
  # The music is in .ogg format
  depends_on 'sdl_mixer' => 'with-libvorbis'
  depends_on 'sdl_net'
  depends_on 'sdl_ttf'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end
