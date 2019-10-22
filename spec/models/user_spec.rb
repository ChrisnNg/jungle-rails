require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject {
      described_class.new(
      first_name: 'John',
      last_name: 'Doe',
      email: 'test@test.COM',
      password: 'password',
      password_confirmation: 'password'

    )}

    it "validates that user generated with valid params" do
      expect(subject).to be_valid
    end

  it "validates that password exists" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "validates that password confirmation exists" do
    subject.password_confirmation = nil
    expect(subject).to_not be_valid
  end

  it "validates that password and confirmation are the same" do
    subject.password_confirmation = 'wrongpassword'
    expect(subject).to_not be_valid
  end

  it "validates that email exists" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "validates that email is unique" do
    User.create!(
      first_name: 'John',
      last_name: 'Doe',
      email: 'test@test.COM',
      password: 'password',
      password_confirmation: 'password'
    )

    second_subject = User.new(
      first_name: 'Teddy',
      last_name: 'Bear',
      email: 'test@test.COM',
      password: 'password',
      password_confirmation: 'password'
    )

    expect(second_subject).to_not be_valid
  end

  it "validates that first_name exists" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "validates that last_name exists" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "validates the length of password is longer than minimum" do
    subject.password = 'pa'
    expect(subject).to_not be_valid
  end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end

  
end


# Here are the things to test for in this model's validations:

# It must be created with a password and password_confirmation fields
# These need to match so you should have an example for where they are not the same
# These are required when creating the model so you should also have an example for this
# Emails must be unique (not case sensitive; for example, TEST@TEST.com should not be allowed if test@test.COM is in the database)
# Email, first name, and last name should also be required