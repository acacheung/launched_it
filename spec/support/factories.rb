FactoryGirl.define do
  factory :project do
    name 'Breakable Toy'
    url 'www.google.com'
    code_base_url 'www.github.com'
    description 'Yay beautiful app'
    contact_email 'yay@me.com'
  end

  factory :comment do
    first_name 'Launcher'
    last_name 'McAacdemy'
    email 'launch@academy.com'
    body 'I love Launch Academy'
    user_id '1'
    project_id '1'
  end
end