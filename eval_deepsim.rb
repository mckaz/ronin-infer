$LOAD_PATH.unshift './lib'
require_relative './lib/ronin.rb'
require_relative './lib/ronin/script.rb'
require_relative './lib/ronin/script/testable.rb'
require_relative './lib/ronin/script/buildable.rb'
require_relative './lib/ronin/script/deployable.rb'
require_relative './lib/ronin/model.rb'
require_relative './lib/ronin/script.rb'
require_relative './lib/ronin/ui.rb'
require_relative './lib/ronin/ui/cli.rb'
require_relative './lib/ronin/ui/console.rb'
require_relative './lib/ronin/ui/cli/class_command.rb'
require_relative './lib/ronin/ui/cli/script_command.rb'
require_relative './lib/ronin/database.rb'
require_relative './lib/ronin/database/migrations.rb'


require 'rdl'
RDL::Config.instance.number_mode = true
require 'types/core'


require './orig_types'

RDL::Heuristic.get_rank_accs(:arg)
RDL::Heuristic.get_rank_accs(:ret)
