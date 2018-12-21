require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = "watermelondb"
  s.version = package['version']
  s.summary = package["description"]

  s.author = { package["author"]["name"] => package["author"]["email"] }
  s.homepage = "https://github.com/Nozbe/WatermelonDB#readme"
  s.license = "MIT"

  s.platform = :ios, "9.0"
  s.requires_arc = true

  s.source = { :git => "https://github.com/dm-Mobile-SE-Developer/WatermelonDB.git" }
  s.source_files = "native/ios/**/*.{h,m, swift}"
  s.source       = { :git => "https://github.com/dm-Mobile-SE-Developer/WatermelonDB", :tag => "v#{s.version}" }
  s.dependency 'React'
end