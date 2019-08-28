class Doctor
attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def appointment
  Appointment.all.select {|appointment| appointment.Doctor == self}
end

end
