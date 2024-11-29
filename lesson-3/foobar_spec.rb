require_relative '../foobar'
RSpec.describe "calculate_result" do
    it "Если ни одно число не равно 20, то возвращает сумму этих чисел" do
        expect(calculate_result(10, 15)).to eq(25)
end
