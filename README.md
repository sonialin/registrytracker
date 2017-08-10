# README

-- This is a dashboard for a simple enrollment platform. As authentication is not within the scope of the exercise, there is a default current_user which is Coordinator.find(2). The default user can be changed at ApplicationController set_current_user.

Instructions
-- Load seed data from seed.db
-- Change the current_user by going to the application_controller and plug in any number x that is between 1 to 10 at @current_user = Coordinator.find(x). Mainly this changes the home page where the coordinator's associated registries are displayed, and also enables enrollments where the corresponding coordinator is automatically set to the current cooordinator.
