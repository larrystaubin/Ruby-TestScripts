
  def welcome
    puts "Welcome to TrainingRite Ruby class"
  end

  welcome

# intro to functions
  def welcome_course(coursename)
    puts "Welcome to Trainingrite #{coursename} class"
  end

# calling the functions
  welcome_course("Ruby Cucumber")


def customer_information(name, address, city, state, zip, country)
  puts "Here is your registration information #{name}, #{address}, #{city}, #{state}, #{zip}, #{country}"
end

  # calling the functions

  welcome   #no parameter

  welcome_course("Ruby Cucumber") # 1 parameter

  customer_information("Tester One", "10 Main St", "New York", "NY", "10012", "USA") # multiple parameters
