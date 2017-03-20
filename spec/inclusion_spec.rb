require_relative '../lib/inclusion'

RSpec.describe Maths do
  # Include
  describe 'include for methods for class objects' do

    subject { described_class.new }

    context 'statistical modules' do
      it 'has mean operator' do
        expect(subject).to respond_to(:mean)
      end

      it 'is available to objects only' do
        expect(described_class).to_not respond_to(:mean)
      end
    end
  end

  # Extend
  describe 'extend for class methods' do

    subject { described_class }

    context 'common methods' do
      it 'returns class name' do
        expect(subject).to respond_to(:class_name)
        expect(subject.class_name).to eq('Maths')
      end
    end
  end
end
