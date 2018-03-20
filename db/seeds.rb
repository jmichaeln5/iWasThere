User.create!([
  {email: "sample@example.com", encrypted_password: "$2a$11$SVPBJj3/tZVeetXnLnl6pu7UgCHuMsibrnDx6Jm3aI1q8s33s1kSu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-03-20 10:03:34", last_sign_in_at: "2018-03-20 10:03:34", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Place.create!([
  {title: "Coyo Taco", description: "Good music, better tacos", rating: 4, image_file_name: "coyo.jpg", image_content_type: "image/jpeg", image_file_size: 306457, image_updated_at: "2018-03-20 10:05:27", latitude: 25.7996904, longitude: -80.1993159, address: "2300 NW 2nd Ave", city: "Miami", state: "FL", zip: 33127, user_id: 1}
])
