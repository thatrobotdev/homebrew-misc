cask "sketch@3.5" do
    version "3.5.0"
    sha256 "5fe5ace378beb348c7df4188e06c4838e25176b739c0eb218ddf945138fc311f"
  
    url "https://download.sketch.com/sketch-#{version}.zip"
    name "Sketch"
    desc "Digital design and prototyping platform"
    homepage "https://www.sketch.com/"
  
    auto_updates true
    depends_on macos: ">= :yosemite"
  
    app "Sketch.app"
  
  end