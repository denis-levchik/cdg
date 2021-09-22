class ModelBranch1 
  attr_accessor :errors, :deposit
  attr_reader :database

  def initialize
    @database = {'1': {months: 10, percent: 10},'2': {months: 20, percent: 20},'3': {months: 30, percent: 30}}
  end

  def search(id)
    id = id.to_sym
    if @database.keys.include?(id)
      @deposit = @database[id]
    else
      @errors = {responce_code: '404 Not Found', body: 'Депозита с таким именем не существует'}
    end
  end
end