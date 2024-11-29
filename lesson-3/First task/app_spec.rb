require_relative './app'  

RSpec.describe 'word_result' do
  it 'Возвращает перевёрнутую строку, если строка не оканчивается на CS в любом регистре' do
    expect(word_result("Хачипури")).to eq("ирупичаХ")  
  end
  
  it 'Возвращает 2 в количестве символов в строке, если в строке есть CS в любом регистре' do
  expect(word_result("Хачипуриcs")).to eq(1024)
end
end