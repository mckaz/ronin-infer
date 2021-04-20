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


RDL.infer DataMapper::Model, 'first', time: :files

RDL.no_infer_meth Ronin::Address, 'self.[]' # use of super
RDL.infer_file "./lib/ronin/address.rb"
#RDL.infer_file "./lib/ronin/arch.rb" # just a single method with unsupported use of `super`
RDL.infer_file "./lib/ronin/author.rb"
#RDL.infer_file "./lib/ronin/auto_load.rb" # unsupported uses of super
RDL.infer_file "./lib/ronin/campaign.rb"
RDL.infer_file "./lib/ronin/config.rb"
RDL.infer_file "./lib/ronin/credential.rb"
RDL.infer_file "./lib/ronin/email_address.rb"
RDL.infer_file "./lib/ronin/host_name.rb"
RDL.infer_file "./lib/ronin/installation.rb"
RDL.infer_file "./lib/ronin/ip_address.rb"
RDL.infer_file "./lib/ronin/mac_address.rb"
RDL.infer_file "./lib/ronin/open_port.rb"
RDL.no_infer_meth OS, 'self.predefine' # super
RDL.infer_file "./lib/ronin/os.rb"
RDL.infer_file "./lib/ronin/password.rb"
RDL.infer_file "./lib/ronin/port.rb"
RDL.no_infer_meth Ronin::Repository, :initialize
RDL.no_infer_meth Ronin::Repository, :activate!
RDL.infer_file "./lib/ronin/repository.rb"
RDL.infer_file "./lib/ronin/ronin.rb"
RDL.infer_file "./lib/ronin/software.rb"
RDL.infer_file "./lib/ronin/target.rb"
RDL.no_infer_meth Ronin::URL, 'self.[]'
RDL.infer_file "./lib/ronin/url.rb"
RDL.infer_file "./lib/ronin/url_query_param.rb"
RDL.infer_file "./lib/ronin/url_query_param_name.rb"
RDL.infer_file "./lib/ronin/web_credential.rb"

RDL.no_infer_meth Ronin::Database, 'self.setup?'
RDL.infer_file "./lib/ronin/database/database.rb"

RDL.no_infer_meth Ronin::Model::HasAuthors, 'self.included' ## use of module_eval
RDL.no_infer_meth Ronin::Model::HasAuthors::InstanceMethods, 'author' ## mixin issue
RDL.infer_file "./lib/ronin/model/has_authors.rb"
RDL.no_infer_meth Ronin::Model::HasDescription, 'self.included' ## use of module_eval
RDL.infer_file "./lib/ronin/model/has_description.rb"
RDL.no_infer_meth Ronin::Model::HasLicense, 'self.included' ## use of module_eval
RDL.infer_file "./lib/ronin/model/has_license.rb"
RDL.no_infer_meth Ronin::Model::HasName, 'self.included' ## use of module_eval
RDL.no_infer_meth Ronin::Model::HasName::ClassMethods, :named
RDL.infer_file "./lib/ronin/model/has_name.rb"
RDL.no_infer_meth Ronin::Model::HasUniqueName, 'self.included' ## use of module_eval
RDL.no_infer_meth Ronin::Model::HasUniqueName::ClassMethods, 'parse' 
RDL.no_infer_meth Ronin::Model::HasUniqueName::ClassMethods, '[]' 
RDL.infer_file "./lib/ronin/model/has_unique_name.rb"
RDL.no_infer_meth Ronin::Model::ClassMethods, :relationship_name
RDL.no_infer_meth Ronin::Model::ClassMethods, :load
RDL.infer_file "./lib/ronin/model/model.rb"
RDL.infer_file "./lib/ronin/model/types/description.rb"

RDL.no_infer_meth Ronin::Script::Buildable, :initialize
RDL.no_infer_meth Ronin::Script::Buildable, :test!
RDL.no_infer_meth Ronin::Script::Buildable, :build!
RDL.infer_file "./lib/ronin/script/buildable.rb"

RDL.no_infer_meth Ronin::Script::Deployable, :initialize
RDL.no_infer_meth Ronin::Script::Deployable, :deploy!
RDL.no_infer_meth Ronin::Script::Deployable, :evacuate!
RDL.infer_file "./lib/ronin/script/deployable.rb"

RDL.no_infer_meth Ronin::Script::Path, :load_script
RDL.no_infer_meth Ronin::Script::Path, :destroy
RDL.no_infer_meth Ronin::Script::Path, :destroy!
RDL.infer_file "./lib/ronin/script/path.rb"

RDL.no_infer_meth Ronin::Script, 'self.included'
RDL.no_infer_meth Ronin::Script::InstanceMethods, 'initialize'
RDL.no_infer_meth Ronin::Script::InstanceMethods, 'load_script!'
RDL.no_infer_meth Ronin::Script::InstanceMethods, 'to_s'
RDL.infer_file "./lib/ronin/script/script.rb"

RDL.no_infer_meth Ronin::Script::Testable, 'initialize'
RDL.infer_file "./lib/ronin/script/testable.rb"

RDL.no_infer_meth Ronin::UI::CLI::ClassCommand, 'initialize'
RDL.no_infer_meth Ronin::UI::CLI::ClassCommand, 'self.class_namespace'
RDL.infer_file "./lib/ronin/ui/cli/class_command.rb"

RDL.infer_file "./lib/ronin/ui/cli/cli.rb"

RDL.no_infer_meth Ronin::UI::CLI::Command, 'self.usage'
RDL.no_infer_meth Ronin::UI::CLI::Command, 'self.summary'
RDL.no_infer_meth Ronin::UI::CLI::Command, 'self.examples'
RDL.no_infer_meth Ronin::UI::CLI::Command, 'self.each_option'
RDL.no_infer_meth Ronin::UI::CLI::Command, 'self.each_argument'
RDL.infer_file "./lib/ronin/ui/cli/command.rb"

RDL.no_infer_meth Ronin::UI::CLI::ModelCommand, 'self.each_query_option'
RDL.no_infer_meth Ronin::UI::CLI::ModelCommand, 'self.model'
RDL.no_infer_meth Ronin::UI::CLI::ModelCommand, 'query'
RDL.infer_file "./lib/ronin/ui/cli/model_command.rb"

RDL.no_infer_meth Ronin::UI::CLI::Printing, :puts
RDL.infer_file "./lib/ronin/ui/cli/printing.rb"

RDL.infer_file "./lib/ronin/ui/cli/resources_command.rb"
RDL.infer_file "./lib/ronin/ui/cli/script_command.rb"

RDL.no_infer_meth Ronin::UI::CLI::Commands::Campaign, :add
RDL.infer_file "./lib/ronin/ui/cli/commands/campaigns.rb"

RDL.infer_file "./lib/ronin/ui/cli/commands/console.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/creds.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/database.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/exec.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/fuzzer.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/help.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/hosts.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/install.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/ips.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/repos.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/uninstall.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/update.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/urls.rb"
RDL.infer_file "./lib/ronin/ui/cli/commands/wordlist.rb"

RDL.infer_file "./lib/ronin/ui/cli/commands/net/proxy.rb"


RDL.do_infer :files, num_times: 1
