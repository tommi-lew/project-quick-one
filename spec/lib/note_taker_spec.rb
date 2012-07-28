require 'spec_helper'

describe NoteTaker do
  describe '.take_note' do
    context 'success' do
      it 'should save to database' do
        expect {
          NoteTaker.take_note("some description1")
        }.to change(Note, :count).by(1)
      end

      it 'should return true' do
        NoteTaker.take_note("some description").should == true
      end
    end

    context 'duplicates' do
      before { NoteTaker.take_note("some description") }

     it 'should not save to database' do
       expect {
         NoteTaker.take_note("some description")
       }.to change(Note, :count).by(0)
     end

      it 'should return false' do
        NoteTaker.take_note("some description").should == false
      end
    end
  end
end
