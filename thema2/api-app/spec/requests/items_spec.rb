require 'rails_helper'

RSpec.describe 'Items API' do
  # Initialize the test data
  todo = FactoryBot.create(:todo, title: 'I wish i had a title', username:'A person')
  FactoryBot.create(:item,name:'Item1',done: false, todo_id:todo.id)
  
  let(:id) { items.first.id }

    
end