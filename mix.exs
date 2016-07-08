defmodule NervesSystemRpi3.Mixfile do
  use Mix.Project

  @version Path.join(__DIR__, "VERSION")
    |> File.read!
    |> String.strip

  def project do
    [app: :nerves_system_rpi3,
     version: @version,
     elixir: "~> 1.2",
     compilers: Mix.compilers ++ [:nerves_system],
     description: description,
     package: package,
     deps: deps]
  end

  def application do
   []
  end

  defp deps do
    [{:nerves_system, "~> 0.1.4"},
     {:nerves_system_br, github: "nerves-project/nerves_system_br", ref: "fcf6eb3215913fdbc2716590e245b720775ccad2"},
     #{:nerves_system_br, "~> 0.6.0"},
     {:nerves_toolchain_arm_unknown_linux_gnueabihf, "~> 0.6.0"}]
  end

  defp description do
   """
   Nerves System - Raspberry Pi 3 B
   """
  end

  defp package do
   [maintainers: ["Frank Hunleth", "Justin Schneck"],
    files: ["LICENSE", "mix.exs", "nerves_defconfig", "nerves.exs", "README.md", "VERSION", "rootfs-additions", "fwup.conf", "cmdline.txt", "linux-4.1.defconfig", "config.txt", "post-createfs.sh"],
    licenses: ["Apache 2.0"],
    links: %{"Github" => "https://github.com/nerves-project/nerves_system_rpi3"}]
  end
end
