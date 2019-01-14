require 'rspec'
require_relative '../lib/hashtags'

describe 'My behaviour' do

  it 'should catch a single hash tag' do
    expect(hashtags("Будете у нас на #Колыме?")).to match_array(["#Колыме"])
  end

   it 'should catch more than one hash tags' do
     expect(hashtags("Будете у нас на #Колыме? Нет, уж лучше #вы_к_нам!")).to match_array(["#Колыме", "#вы_к_нам"])
   end

   it 'should catch hash tags with -' do
     expect(hashtags("#-hello, world")).to match_array(["#-hello"])
   end

   it 'should not catch special character ?' do
     expect(hashtags("#hello?")).to match_array(["#hello"])
   end

   it 'should not catch special character !' do
     expect(hashtags("#hello!")).to match_array(["#hello"])
   end

   # it 'should fail' do
   #   expect(hashtags("#hello")).to match_array(["hello"])
   # end
end