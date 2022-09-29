Rspec.describe User, type: :model do
  first_user { User.new(name: 'Alphonce', photo: 'https:/photo.com', bio: 'Teacher', ) }
end