require 'spec_helper'

describe Note do
  it { should validate_uniqueness_of(:description ) }
end
