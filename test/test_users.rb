require 'minitest/autorun'
require 'aircall'
require 'default_aircall'
require 'default_tests'

module TestAircall
  describe Aircall::Numbers do
    describe "By id" do

      before do
        @number_by_id = DefaultAircall::AIRCALL.numbers.get_by_id(27837)
      end

      it "est un Hash" do
        @number_by_id.must_be_instance_of Hash
      end

      it "ne renvoi pas d'erreurs" do
        @number_by_id['error'].must_be_nil
      end

    end
  end
end