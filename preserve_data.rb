require './preserve_data'
require './load_data'

# require './options/[Modules created by Essohanam]'
# require './options/[Modules created by Suleiman]'
# require './options/[Modules created by Zilola]'
require './options/example'

class App
  # include [Modules created by Essohanam]
  # include [Modules created by Suleiman]
  # include [Modules created by Zilola]
  include Example

  include PreserveData
  include LoadData
end
