require 'ronin/model/model'

class BasicModel

  include Ronin::Model

  property :id, Serial

  property :name, String

end
