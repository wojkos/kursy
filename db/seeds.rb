Uzytkownik.create!(
  "imie" => 'admin',
  "nazwisko" => 'admin',
  "uzytkownik" => 'admin',
  "email" => 'admin@example.com',
  "telefon" => '123456789',
  "password_digest" => BCrypt::Password.create('admin')
  )

5.times do |u|
  Uzytkownik.create!(
    "imie" => Faker::Name.name ,
    "nazwisko" => Faker::Name.last_name ,
    "uzytkownik" => Faker::Internet.username(5),
    "email" => Faker::Internet.email,
    "telefon" => '123456789',
    "password_digest" => BCrypt::Password.create('admin')
    )
end

5.times do |k|
  @cat = Kategorie.create!(
    "nazwa" => Faker::Music.genre,
    "pozycja" => k+1,
    "widoczna" => true,
  )
  3.times do |s|
    @str = Strona.create!(
      "kategorie_id" => @cat.id,
      "nazwa" => Faker::Music.band,
      "pozycja" => s,
      "widoczna" => true 
    )
    5.times do |a|
      Artykul.create!(
        "strona_id" => @str.id,
        "nazwa" => Faker::Music.album,
        "pozycja" => a,
        "widoczny" => true,
        'zawartosc' => Faker::Lorem.sentence(180),
        :zdjecie => File.new("public/images/img#{a}.jpg")
      )
      end
    end
  end
