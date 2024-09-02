require_relative '../reverse_vowels'

require 'rspec'

RSpec.describe ReverseVowels do
  let(:reverser) { ReverseVowels.new }

  describe '#reverse_vowels' do
    context 'when input is empty' do
      it 'returns an empty string' do
        expect(reverser.reverse_vowels('')).to eq('')
      end
    end

    context 'when input has no vowels' do
      it 'returns the same string' do
        expect(reverser.reverse_vowels('bcdfg')).to eq('bcdfg')
      end
    end

    context 'when input has only one vowel' do
      it 'returns the same string' do
        expect(reverser.reverse_vowels('hell')).to eq('hell')
      end
    end

    context 'when input has multiple vowels' do
      it 'reverses the vowels' do
        expect(reverser.reverse_vowels('hello')).to eq('holle')
        expect(reverser.reverse_vowels('leetcode')).to eq('leotcede')
      end
    end

    context 'when input has mixed case vowels' do
      it 'reverses the vowels irrespective of case' do
        expect(reverser.reverse_vowels('hEllO')).to eq('hOllE')
      end
    end

    context 'when input is a single character' do
      it 'returns the same character' do
        expect(reverser.reverse_vowels('a')).to eq('a')
        expect(reverser.reverse_vowels('b')).to eq('b')
      end
    end

    context 'when input is a string with all vowels' do
      it 'reverses the entire string' do
        expect(reverser.reverse_vowels('aeiou')).to eq('uoiea')
        expect(reverser.reverse_vowels('AEIOU')).to eq('UOIEA')
      end
    end
  end
end
