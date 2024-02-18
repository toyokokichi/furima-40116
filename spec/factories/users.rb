FactoryBot.define do
  factory :user do
    nickname                { 'test' }
    email                   { 'test@example' }
    password                { 'a11111' }
    password_confirmation   { password }
    last_name               { '山田' }
    first_name              { '太郎' }
    katakana_last_name      { 'ヤマダ' }
    katakana_first_name     { 'タロウ' }
    birthdate               { '1930-01-01' }
  end
end
