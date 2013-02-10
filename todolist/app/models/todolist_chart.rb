class TodolistChart < ActiveRecord::Base
validates_uniqueness_of :name, :message => " : The task with a similar name already exists, please click on the back link to go back"
end
