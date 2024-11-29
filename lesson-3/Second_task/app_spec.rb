require_relative './app'  

RSpec.describe 'Pokemon program' do
    describe '#pokemons_result' do
      it 'формирует массив с заданным количеством покемонов' do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('Пикачу', 'Желтый', 'Charmander', 'Orange')
        
        result = pokemons_result(2)
        
        expect(result).to eq([
          { name: 'Пикачу', color: 'Желтый' },
          { name: 'Charmander', color: 'Orange' }
        ])
      end
    end
  
    describe '#get_string' do
      it 'запрашивает количество покемонов и вызывает pokemons_result' do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('2', 'Bulbasaur', 'Green', 'Squirtle', 'Blue')
        
        expect { get_string }.to output(/Введите количество покемонов/).to_stdout
      end
    end
  
    describe 'полный вывод' do
      it 'выводит массив покемонов в формате массива хэшей' do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('1', 'Eevee', 'Brown')
        
        expect { get_string }.to output(/\[{:name=>"Eevee", :color=>"Brown"}\]/).to_stdout
      end
    end
  end