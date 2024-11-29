require_relative './foobar'

RSpec.describe 'calculate_result' do
  it 'возвращает сумму двух чисел, если ни одно из них не равно 20' do
    expect(calculate_result(10, 15)).to eq(25)
  end

    it 'если хотя бы одно равно 20 - возвращает второе(первое)' do 
    expect(calculate_result(20, 10)).to eq(20)
  end

  it 'если хотя бы одно равно 20 - возвращает второе(второе)' do
    expect(calculate_result(10, 20)).to eq(20)
  end
  
  it 'если 2 по 20, возвращает 20' do
    expect(calculate_result(20, 20)).to eq(20)
  end
end

  RSpec.describe 'foobar' do
    it 'запрашивает ввод у пользователя и возвращает его' do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("42\n")
      expect(foobar('число')).to eq('42')
    end
end