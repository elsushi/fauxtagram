FactoryGirl.define do
  factory(:photo) do
    title 'Default caption'
    image Rails.root.join('features/support/capy.jpg').open
  end
end