RSpec.describe 'Foobar Method' do
  describe '#foobar' do
    it 'правильно запрашивает ввод у пользователя' do
      allow(self).to receive(:print)
      allow(self).to receive(:gets).and_return('10')
      expect(foobar('число')).to eq('10')
    end
  end
end