class Branch1
  attr_accessor :path, :errors, :id
  
  PERMITTED_PATHS = ['deposits']
   
  def initialize(path)
      if PERMITTED_PATHS.include?(path.split('/')[1]) && path.split('/').count == 3
          @id = path.split('/')[2]
      else
          @errors = {responce_code: "400 Bad Request", body: "Вы ввели неправильный путь"}
      end
  end
end