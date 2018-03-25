# Image uploader project

is old and will not be developed further

### Add image through the console

```ruby
s = Scrap.new
rails_image_path = Rails.root.to_s + '/public/rails.png'
file = File.open(rails_image_path)
s.image = file
s.save
```
