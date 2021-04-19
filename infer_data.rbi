# typed: strong
class [s]Ronin
  class Address
    # RDL Type: (String) -> Ronin::Script::Testable
    sig { params(address: String).returns(Ronin::Script::Testable) }
    def parse(address); end
  end

  class Campaign
    # RDL Type: (String) -> Array<URL>
    sig { params(addr: String).returns(T::Array[URL]) }
    def targeting(addr); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(names: T.untyped).returns(T::Array[URL]) }
    def targeting_orgs(names); end
  end

  class Config
    # RDL Type: (?String) -> (false or nil or true)
    sig { params(name: String).returns(T.any(FalseClass, NilClass, TrueClass)) }
    def load(name = nil); end

    # RDL Type: (?((Array<String> or File or [ to_str: () -> String ]))) -> String
    sig { params(sub_path: T.untyped).returns(String) }
    def tmp_dir(sub_path = nil); end
  end

  class Credential
    # RDL Type: (String) -> Array<URL>
    sig { params(name: String).returns(T::Array[URL]) }
    def for_user(name); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(password: T.untyped).returns(T::Array[URL]) }
    def with_password(password); end
  end

  class EmailAddress
    # RDL Type: (String) {((false or true)) -> XXX} -> Array<%any>
    sig { params(text: String).returns(T::Array[T.nilable(BasicObject)]) }
    def extract(text); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(names: T.untyped).returns(T::Array[URL]) }
    def with_hosts(names); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(ips: T.untyped).returns(T::Array[URL]) }
    def with_ips(ips); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(names: T.untyped).returns(T::Array[URL]) }
    def with_users(names); end

    # RDL Type: (String) -> (false or true)
    sig { params(email: String).returns(T.any(FalseClass, TrueClass)) }
    def parse(email); end

    # RDL Type: (String) -> (false or true)
    sig { params(email: String).returns(T.any(FalseClass, TrueClass)) }
    def from(email); end
  end

  class HostName
    # RDL Type: (String) {(Ronin::Script::Testable) -> XXX} -> Array<%any>
    sig { params(text: String).returns(T::Array[T.nilable(BasicObject)]) }
    def extract(text); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(ips: T.untyped).returns(T::Array[URL]) }
    def with_ips(ips); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(numbers: T.untyped).returns(T::Array[URL]) }
    def with_ports(numbers); end

    # RDL Type: (String) -> Array<URL>
    sig { params(name: String).returns(T::Array[URL]) }
    def tld(name); end

    # RDL Type: (String) -> XXX
    sig { params(name: String).returns(T.untyped) }
    def domain(name); end

    # RDL Type: (String, ?XXX) -> Array<XXX>
    sig { params(addr: String, nameserver: T.untyped).returns(T::Array[T.untyped]) }
    def lookup(addr, nameserver = nil); end
  end

  class Installation
    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def gems; end

    # RDL Type: () -> Array<String>
    sig { returns(T::Array[String]) }
    def paths; end

    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def libraries; end

    # RDL Type: ((Array<String> or File or [ to_str: () -> String ])) {(String) -> XXX} -> Enumerator<%any>
    sig { params(pattern: T.untyped).returns(T::Enumerator[T.nilable(BasicObject)]) }
    def each_file(pattern); end

    # RDL Type: (String, ?String) {([ chomp: (String) -> XXX ]) -> XXX} -> Enumerator<%any>
    sig { params(directory: String, ext: String).returns(T::Enumerator[T.nilable(BasicObject)]) }
    def each_file_in(directory, ext = nil); end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def load_gems!; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def load_gemspecs!; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def load!; end
  end

  class IPAddress
    # RDL Type: (String, ?String) {(Ronin::Script::Testable) -> XXX} -> Array<%any>
    sig { params(text: String, version: String).returns(T::Array[T.nilable(BasicObject)]) }
    def extract(text, version = nil); end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def v4; end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def v6; end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(macs: T.untyped).returns(T::Array[URL]) }
    def with_macs(macs); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(names: T.untyped).returns(T::Array[URL]) }
    def with_hosts(names); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(numbers: T.untyped).returns(T::Array[URL]) }
    def with_ports(numbers); end

    # RDL Type: (String, ?XXX) -> Array<XXX>
    sig { params(name: String, nameserver: T.untyped).returns(T::Array[T.untyped]) }
    def lookup(name, nameserver = nil); end
  end

  class MACAddress
    # RDL Type: (String) {(Ronin::Script::Testable) -> XXX} -> Array<%any>
    sig { params(text: String).returns(T::Array[T.nilable(BasicObject)]) }
    def extract(text); end
  end

  class Password
    # RDL Type: ([ to_s: () -> String ]) -> Ronin::Script::Testable
    sig { params(password: T.untyped).returns(Ronin::Script::Testable) }
    def parse(password); end
  end

  class Port
    # RDL Type: (XXX) -> Ronin::Script::Testable
    sig { params(number: T.untyped).returns(Ronin::Script::Testable) }
    def from(number); end

    # RDL Type: (String) -> Ronin::Script::Testable
    sig { params(number: String).returns(Ronin::Script::Testable) }
    def parse(number); end
  end

  class Repository
    # RDL Type: (String) -> XXX
    sig { params(name: String).returns(T.untyped) }
    def find(name); end

    # RDL Type: (?([ []: (:path) -> XXX ] and [ has_key?: (:path) -> XXX ] and [ merge: ({ path: Pathname, installed: (false or true), domain: String }) -> XXX ])) -> Ronin::Repository
    sig { params(options: T.untyped).returns(Ronin::Repository) }
    def add(options = nil); end

    # RDL Type: (?[ []: (:uri) -> XXX ]) -> Ronin::Repository
    sig { params(options: T.untyped).returns(Ronin::Repository) }
    def install(options = nil); end

    # RDL Type: () {([ update!: () -> XXX ]) -> XXX} -> Ronin::Script::Testable
    sig { returns(Ronin::Script::Testable) }
    def update!; end

    # RDL Type: (String) -> Ronin::Script::Testable
    sig { params(name: String).returns(Ronin::Script::Testable) }
    def uninstall(name); end

    # RDL Type: () -> Enumerator<t>
    sig { returns(T::Enumerator[T.untyped]) }
    def activate!; end

    # RDL Type: () -> Enumerator<t>
    sig { returns(T::Enumerator[T.untyped]) }
    def deactivate!; end
  end

  class URL
    # RDL Type: (String) {((false or true)) -> XXX} -> Array<%any>
    sig { params(text: String).returns(T::Array[T.nilable(BasicObject)]) }
    def extract(text); end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def http; end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def https; end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(names: T.untyped).returns(T::Array[URL]) }
    def hosts(names); end

    # RDL Type: (XXX) -> Array<URL>
    sig { params(numbers: T.untyped).returns(T::Array[URL]) }
    def ports(numbers); end

    # RDL Type: (String) -> Array<URL>
    sig { params(root_dir: String).returns(T::Array[URL]) }
    def directory(root_dir); end

    # RDL Type: (String) -> Array<URL>
    sig { params(ext: String).returns(T::Array[URL]) }
    def extension(ext); end

    # RDL Type: (String) -> Array<URL>
    sig { params(name: String).returns(T::Array[URL]) }
    def with_query_param(name); end

    # RDL Type: (String) -> Array<URL>
    sig { params(value: String).returns(T::Array[URL]) }
    def with_query_value(value); end

    # RDL Type: (String) -> Array<URL>
    sig { params(name: String).returns(T::Array[URL]) }
    def query_param(name); end

    # RDL Type: (String) -> Array<URL>
    sig { params(value: String).returns(T::Array[URL]) }
    def query_value(value); end

    # RDL Type: (([ fragment: () -> XXX ] and [ host: () -> XXX ] and [ path: () -> XXX ] and [ port: () -> XXX ] and [ query_params: () -> XXX ] and [ respond_to?: (:query_params) -> XXX ] and [ scheme: () -> XXX ])) -> (false or true)
    sig { params(uri: T.untyped).returns(T.any(FalseClass, TrueClass)) }
    def from(uri); end

    # RDL Type: (String) -> (false or true)
    sig { params(url: String).returns(T.any(FalseClass, TrueClass)) }
    def parse(url); end

    # RDL Type: ([ path: () -> XXX ]) -> String
    sig { params(uri: T.untyped).returns(String) }
    def normalized_path(uri); end
  end

  class WebCredential
    # RDL Type: (String) -> (false or true)
    sig { params(email: String).returns(T.any(FalseClass, TrueClass)) }
    def with_email(email); end
  end

  class Database
    # RDL Type: () -> XXX
    sig { returns(T.untyped) }
    def repositories; end

    # RDL Type: (String) -> (false or true)
    sig { params(name: String).returns(T.any(FalseClass, TrueClass)) }
    def repository?(name); end

    # RDL Type: () {() -> XXX} -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def save; end

    # RDL Type: (?([ empty?: () -> XXX ] and [ fetch: (:level, :info) -> XXX ] and [ fetch: (:path, String) -> XXX ] and [ fetch: (:stream, XXX) -> XXX ])) -> DataMapper::Logger
    sig { params(options: T.untyped).returns(DataMapper::Logger) }
    def log(options = nil); end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def upgrade!; end

    # RDL Type: (?String) -> (false or true)
    sig { params(uri: String).returns(T.any(FalseClass, TrueClass)) }
    def setup(uri = nil); end

    # RDL Type: (XXX) {XXX} -> String
    sig { params(name: T.untyped).returns(String) }
    def repository(name); end

    # RDL Type: (XXX) {() -> XXX} -> nil
    sig { params(name: T.untyped).void }
    def clear(name); end

    # RDL Type: () {() -> XXX} -> Array<XXX>
    sig { returns(T::Array[T.untyped]) }
    def map; end
  end

  class Model
    # RDL Type: (([ <: (Module) -> XXX ] and [ send: (:extend, Module) -> XXX ] and [ send: (:include, Module) -> XXX ] and [ send: (:include, Module, Module, Module) -> XXX ])) -> XXX
    sig { params(base: T.untyped).returns(T.untyped) }
    def included(base); end
  end

  class Script
    # RDL Type: (String) -> Ronin::Script::Testable
    sig { params(path: String).returns(Ronin::Script::Testable) }
    def load_from(path); end
  end

  class UI
    class CLI
      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def commands; end

      # RDL Type: (String) -> XXX
      sig { params(name: String).returns(T.untyped) }
      def command(name); end

      # RDL Type: (?Array<String>) -> (false or true)
      sig { params(argv: T::Array[String]).returns(T.any(FalseClass, TrueClass)) }
      def start(argv = nil); end

      class ClassCommand
        # RDL Type: (?String) -> Symbol
        sig { params(name: String).returns(Symbol) }
        def class_name(name = nil); end

        # RDL Type: () -> Symbol
        sig { returns(Symbol) }
        def command_class; end
      end

      class Command
        # RDL Type: () -> Symbol
        sig { returns(Symbol) }
        def command_name; end

        # RDL Type: (?Array<String>) -> (false or true)
        sig { params(argv: T::Array[String]).returns(T.any(FalseClass, TrueClass)) }
        def start(argv = nil); end

        # RDL Type: (?Hash<:import, { flag: XXX, usage: XXX }>) -> (false or true)
        sig { params(options: T::Hash[Symbol, T.untyped]).returns(T.any(FalseClass, TrueClass)) }
        def run(options = nil); end

        # RDL Type: () -> Hash<:import, { flag: XXX, usage: XXX }>
        sig { returns(T::Hash[Symbol, T.untyped]) }
        def options; end

        # RDL Type: (:import, ?([ []: (:flag) -> XXX ] and [ []: (:usage) -> XXX ])) -> String
        sig { params(name: Symbol, options: T.untyped).returns(String) }
        def option(name, options = nil); end

        # RDL Type: () -> (false or true)
        sig { returns(T.any(FalseClass, TrueClass)) }
        def options?; end

        # RDL Type: () -> Array<Symbol>
        sig { returns(T::Array[Symbol]) }
        def arguments; end

        # RDL Type: (String, ?Hash<:import, { flag: XXX, usage: XXX }>) -> String
        sig { params(name: String, options: T::Hash[Symbol, T.untyped]).returns(String) }
        def argument(name, options = nil); end

        # RDL Type: () -> (false or true)
        sig { returns(T.any(FalseClass, TrueClass)) }
        def arguments?; end
      end

      class ModelCommand
        # RDL Type: () -> Array<:import>
        sig { returns(T::Array[Symbol]) }
        def query_options; end

        # RDL Type: (:import, ?([ []: (:flag) -> XXX ] and [ []: (:usage) -> XXX ])) -> String
        sig { params(name: Symbol, options: T.untyped).returns(String) }
        def query_option(name, options = nil); end
      end

      class ResourcesCommand
        # RDL Type: (?String) -> XXX
        sig { params(model: String).returns(T.untyped) }
        def model(model = nil); end
      end

      class ScriptCommand
        # RDL Type: (?[ included_modules: () -> XXX ]) -> XXX
        sig { params(script: T.untyped).returns(T.untyped) }
        def script_class(script = nil); end
      end

      class Commands
        class Exec
          # RDL Type: (?Array<String>) -> (false or true)
          sig { params(argv: T::Array[String]).returns(T.any(FalseClass, TrueClass)) }
          def start(argv = nil); end
        end
      end
    end
  end
end

module Ronin
  # RDL Type: (String) -> Ronin::Script::Testable
  sig { params(path: String).returns(Ronin::Script::Testable) }
  def script(path); end

  class Address
    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def inspect; end
  end

  class Author
    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end
  end

  class Campaign
    # RDL Type: (String) -> (false or true)
    sig { params(address: String).returns(T.any(FalseClass, TrueClass)) }
    def targets?(address); end

    # RDL Type: (String) -> (false or true)
    sig { params(addr: String).returns(T.any(FalseClass, TrueClass)) }
    def target!(addr); end
  end

  class Credential
    # RDL Type: () -> String
    sig { returns(String) }
    def user; end

    # RDL Type: () -> String
    sig { returns(String) }
    def clear_text; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end
  end

  class EmailAddress
    # RDL Type: () -> String
    sig { returns(String) }
    def user; end

    # RDL Type: () -> String
    sig { returns(String) }
    def host; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def inspect; end
  end

  class HostName
    # RDL Type: (?XXX) -> Array<XXX>
    sig { params(nameserver: T.untyped).returns(T::Array[T.untyped]) }
    def lookup!(nameserver = nil); end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def recent_ip_address; end

    # RDL Type: () -> String
    sig { returns(String) }
    def last_scanned_at; end
  end

  class IPAddress
    # RDL Type: (?XXX) -> Array<XXX>
    sig { params(nameserver: T.untyped).returns(T::Array[T.untyped]) }
    def lookup!(nameserver = nil); end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def recent_mac_address; end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def recent_host_name; end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def recent_os_guess; end

    # RDL Type: () -> String
    sig { returns(String) }
    def last_scanned_at; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_ip; end

    # RDL Type: () -> Number
    sig { returns(Integer) }
    def to_i; end
  end

  class MACAddress
    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def recent_ip_address; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_i; end
  end

  class OpenPort
    # RDL Type: () -> String
    sig { returns(String) }
    def address; end

    # RDL Type: () -> String
    sig { returns(String) }
    def number; end

    # RDL Type: () -> Number
    sig { returns(Integer) }
    def to_i; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end
  end

  class OS
    # RDL Type: () -> String
    sig { returns(String) }
    def recent_ip_address; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end
  end

  class Password
    # RDL Type: (String, ?([ []: (:append_salt) -> XXX ] and [ []: (:prepend_salt) -> XXX ])) -> String
    sig { params(algorithm: String, options: T.untyped).returns(String) }
    def digest(algorithm, options = nil); end

    # RDL Type: () -> String
    sig { returns(String) }
    def count; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def inspect; end
  end

  class Port
    # RDL Type: () -> Number
    sig { returns(Integer) }
    def to_i; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def inspect; end
  end

  class Repository
    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def local?; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def remote?; end

    # RDL Type: () -> Array<String>
    sig { returns(T::Array[String]) }
    def executables; end

    # RDL Type: () {XXX} -> Enumerator<%any>
    sig { returns(T::Enumerator[T.nilable(BasicObject)]) }
    def each_script; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def activated?; end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def deactivate!; end

    # RDL Type: ((Array<String> or File or [ to_str: () -> String ])) -> String
    sig { params(sub_path: T.untyped).returns(String) }
    def find_script(sub_path); end

    # RDL Type: () -> Ronin::Repository
    sig { returns(Ronin::Repository) }
    def cache_scripts!; end

    # RDL Type: () -> Ronin::Repository
    sig { returns(Ronin::Repository) }
    def sync_scripts!; end

    # RDL Type: () -> Ronin::Repository
    sig { returns(Ronin::Repository) }
    def clean_scripts!; end

    # RDL Type: () {(Ronin::Repository) -> XXX} -> Ronin::Repository
    sig { returns(Ronin::Repository) }
    def update!; end

    # RDL Type: () {(Ronin::Repository) -> XXX} -> Ronin::Repository
    sig { returns(Ronin::Repository) }
    def uninstall!; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> Ronin::Repository
    sig { returns(Ronin::Repository) }
    def initialize_metadata; end
  end

  class Software
    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end
  end

  class Target
    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end
  end

  class URL
    # RDL Type: () -> String
    sig { returns(String) }
    def host; end

    # RDL Type: () -> nil
    sig { void }
    def port_number; end

    # RDL Type: () -> Array<URL>
    sig { returns(T::Array[URL]) }
    def query_string; end

    # RDL Type: (String) -> String
    sig { params(query: String).returns(String) }
    def query_string=(query); end

    # RDL Type: () -> (false or true)
    sig { returns(T.any(FalseClass, TrueClass)) }
    def to_uri; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def inspect; end
  end

  class URLQueryParam
    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def inspect; end
  end

  class URLQueryParamName
    # RDL Type: () -> nil
    sig { void }
    def created_at; end

    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end

    # RDL Type: () -> String
    sig { returns(String) }
    def inspect; end
  end

  class WebCredential
    # RDL Type: () -> String
    sig { returns(String) }
    def to_s; end
  end

  module Model
    module HasAuthors
      module ClassMethods
        # RDL Type: (String) -> Array<URL>
        sig { params(name: String).returns(T::Array[URL]) }
        def written_by(name); end

        # RDL Type: (String) -> Array<URL>
        sig { params(name: String).returns(T::Array[URL]) }
        def written_for(name); end
      end
    end

    module HasDescription
      module ClassMethods
        # RDL Type: (String) -> Array<URL>
        sig { params(fragment: String).returns(T::Array[URL]) }
        def describing(fragment); end
      end
    end

    module HasLicense
      module ClassMethods
        # RDL Type: (String) -> Array<URL>
        sig { params(license: String).returns(T::Array[URL]) }
        def licensed_under(license); end
      end

      module InstanceMethods
        # RDL Type: (String) -> Array<URL>
        sig { params(name: String).returns(T::Array[URL]) }
        def licensed_under(name); end

        # RDL Type: (String) -> Array<URL>
        sig { params(name: String).returns(T::Array[URL]) }
        def license!(name); end
      end
    end

    module HasName
      module InstanceMethods
        # RDL Type: () -> String
        sig { returns(String) }
        def to_s; end
      end
    end

    module HasUniqueName
      module InstanceMethods
        # RDL Type: () -> String
        sig { returns(String) }
        def to_s; end

        # RDL Type: () -> String
        sig { returns(String) }
        def inspect; end
      end
    end

    module InstanceMethods
      # RDL Type: (?[ []: (:exclude) -> XXX ]) {(([ []: (Range<Number>) -> XXX ] and [ to_s: () -> String ]), ([ empty?: () -> XXX ] and [ nil?: () -> XXX ] and [ respond_to?: (:empty?) -> XXX ])) -> XXX} -> Hash<XXX, XXX>
      sig { params(options: T.untyped).returns(T::Hash[T.untyped, T.untyped]) }
      def humanize_attributes(options = nil); end
    end

    module Types
      class Description
        # RDL Type: (([ nil?: () -> XXX ] and [ to_s: () -> String ])) -> String
        sig { params(value: T.untyped).returns(String) }
        def typecast(value); end
      end
    end
  end

  module Script
    module Buildable
      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def built?; end

      # RDL Type: (String) -> String
      sig { params(message: String).returns(String) }
      def build_failed!(message); end

      # RDL Type: () {XXX} -> Ronin::Script::Buildable
      sig { returns(Ronin::Script::Buildable) }
      def build; end
    end

    module Deployable
      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def deployed?; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def evacuated?; end

      # RDL Type: (String) -> String
      sig { params(message: String).returns(String) }
      def deploy_failed!(message); end

      # RDL Type: () {XXX} -> Ronin::Script::Deployable
      sig { returns(Ronin::Script::Deployable) }
      def deploy; end

      # RDL Type: () -> Ronin::Script::Deployable
      sig { returns(Ronin::Script::Deployable) }
      def evacuate; end
    end

    class Path
      # RDL Type: () -> String
      sig { returns(String) }
      def class_path; end

      # RDL Type: () -> XXX
      sig { returns(T.untyped) }
      def script_class; end

      # RDL Type: () -> nil
      sig { void }
      def cached_script; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def updated?; end

      # RDL Type: () -> String
      sig { returns(String) }
      def missing?; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def cache; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def sync; end

      # RDL Type: () -> String
      sig { returns(String) }
      def clean; end

      # RDL Type: () -> String
      sig { returns(String) }
      def to_s; end
    end

    module ClassMethods
      # RDL Type: () -> String
      sig { returns(String) }
      def short_name; end

      # RDL Type: (String) -> Ronin::Script::Testable
      sig { params(path: String).returns(Ronin::Script::Testable) }
      def load_from(path); end

      # RDL Type: (?Hash<:import, { flag: XXX, usage: XXX }>) -> Array<Ronin::Script::InstanceMethods>
      sig { params(attributes: T::Hash[Symbol, T.untyped]).returns(T::Array[Ronin::Script::InstanceMethods]) }
      def load_all(attributes = nil); end

      # RDL Type: (?Hash<:import, { flag: XXX, usage: XXX }>) -> Ronin::Script::Testable
      sig { params(attributes: T::Hash[Symbol, T.untyped]).returns(Ronin::Script::Testable) }
      def load_first(attributes = nil); end
    end

    module InstanceMethods
      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def script_loaded?; end

      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def prepared_for_cache?; end

      # RDL Type: () -> String
      sig { returns(String) }
      def cached?; end

      # RDL Type: (*XXX) -> Array<URL>
      sig { params(arguments: T.untyped).returns(T::Array[URL]) }
      def run(*arguments); end

      # RDL Type: () -> String
      sig { returns(String) }
      def inspect; end

      # RDL Type: () {() -> XXX} -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def cache; end
    end

    module Testable
      # RDL Type: () -> (false or true)
      sig { returns(T.any(FalseClass, TrueClass)) }
      def test!; end

      # RDL Type: (String) -> String
      sig { params(message: String).returns(String) }
      def flunk(message); end

      # RDL Type: () -> Ronin::Script::Testable
      sig { returns(Ronin::Script::Testable) }
      def test; end

      # RDL Type: (String) {XXX} -> Ronin::Script::Testable
      sig { params(message: String).returns(Ronin::Script::Testable) }
      def test?(message); end

      # RDL Type: ((String or Symbol), [ inspect: () -> XXX ], ?String) -> Ronin::Script::Testable
      sig { params(name: T.any(String, Symbol), expected_value: T.untyped, message: String).returns(Ronin::Script::Testable) }
      def test_equal(name, expected_value, message = nil); end

      # RDL Type: ((String or Symbol), [ inspect: () -> XXX ], ?String) -> Ronin::Script::Testable
      sig { params(name: T.any(String, Symbol), unexpected_value: T.untyped, message: String).returns(Ronin::Script::Testable) }
      def test_not_equal(name, unexpected_value, message = nil); end

      # RDL Type: ((String or Symbol), ?String) -> Ronin::Script::Testable
      sig { params(name: T.any(String, Symbol), message: String).returns(Ronin::Script::Testable) }
      def test_set(name, message = nil); end

      # RDL Type: ((String or Symbol), (Regexp or String), ?String) -> Ronin::Script::Testable
      sig { params(name: T.any(String, Symbol), pattern: T.any(Regexp, String), message: String).returns(Ronin::Script::Testable) }
      def test_match(name, pattern, message = nil); end

      # RDL Type: ((String or Symbol), (Regexp or String), ?String) -> Ronin::Script::Testable
      sig { params(name: T.any(String, Symbol), pattern: T.any(Regexp, String), message: String).returns(Ronin::Script::Testable) }
      def test_no_match(name, pattern, message = nil); end

      # RDL Type: ((String or Symbol), Array<String>, ?String) -> Ronin::Script::Testable
      sig { params(name: T.any(String, Symbol), expected_values: T::Array[String], message: String).returns(Ronin::Script::Testable) }
      def test_in(name, expected_values, message = nil); end

      # RDL Type: ((String or Symbol), Array<String>, ?String) -> Ronin::Script::Testable
      sig { params(name: T.any(String, Symbol), unexpected_values: T::Array[String], message: String).returns(Ronin::Script::Testable) }
      def test_not_in(name, unexpected_values, message = nil); end
    end
  end

  module UI
    module CLI
      class ClassCommand
        # RDL Type: () {(XXX) -> XXX} -> OptionParser
        sig { returns(OptionParser) }
        def option_parser; end
      end

      class Command
        # RDL Type: (?Hash<:import, { flag: XXX, usage: XXX }>) -> self
        sig { params(options: T::Hash[Symbol, T.untyped]).returns(T.self_type) }
        def initialize(options = nil); end

        # RDL Type: (?Array<String>) -> (false or true)
        sig { params(argv: T::Array[String]).returns(T.any(FalseClass, TrueClass)) }
        def start(argv = nil); end

        # RDL Type: (?Hash<:import, { flag: XXX, usage: XXX }>) -> (false or true)
        sig { params(options: T::Hash[Symbol, T.untyped]).returns(T.any(FalseClass, TrueClass)) }
        def run(options = nil); end

        # RDL Type: () -> String
        sig { returns(String) }
        def setup; end

        # RDL Type: () -> Array<URL>
        sig { returns(T::Array[URL]) }
        def execute; end

        # RDL Type: () -> String
        sig { returns(String) }
        def cleanup; end

        # RDL Type: () {(([ banner: () -> XXX ] and [ banner=: (String) -> XXX ] and [ separator: (String) -> XXX ])) -> nil} -> OptionParser
        sig { returns(OptionParser) }
        def option_parser; end
      end

      class ModelCommand
        # RDL Type: () -> (false or true)
        sig { returns(T.any(FalseClass, TrueClass)) }
        def setup; end
      end

      module Printing
        # RDL Type: () -> self
        sig { returns(T.self_type) }
        def initialize; end

        # RDL Type: (?Number) {() -> (Hash<XXX, XXX> or String)} -> String
        sig { params(n: Integer).returns(String) }
        def indent(n = nil); end

        # RDL Type: (String) -> String
        sig { params(title: String).returns(String) }
        def print_title(title); end

        # RDL Type: (String) {XXX} -> String
        sig { params(title: String).returns(String) }
        def print_section(title); end

        # RDL Type: ([ each: () {(XXX) -> XXX} -> XXX ], ?[ []: (:title) -> XXX ]) -> String
        sig { params(array: T.untyped, options: T.untyped).returns(String) }
        def print_array(array, options = nil); end

        # RDL Type: (([ each: () {(XXX, XXX) -> XXX} -> XXX ] and [ keys: () -> XXX ]), ?[ []: (:title) -> XXX ]) -> String
        sig { params(hash: T.untyped, options: T.untyped).returns(String) }
        def print_hash(hash, options = nil); end
      end

      class ResourcesCommand
        # RDL Type: () -> Array<URL>
        sig { returns(T::Array[URL]) }
        def execute; end

        # RDL Type: (String) -> String
        sig { params(resource: String).returns(String) }
        def print_resource(resource); end

        # RDL Type: (([ each: () {(XXX) -> XXX} -> XXX ] and [ to_csv: () -> XXX ] and [ to_json: () -> XXX ] and [ to_xml: () -> XXX ] and [ to_yaml: () -> XXX ])) -> XXX
        sig { params(resources: T.untyped).returns(T.untyped) }
        def print_resources(resources); end
      end

      class ScriptCommand
        # RDL Type: (?Hash<:import, { flag: XXX, usage: XXX }>) -> self
        sig { params(options: T::Hash[Symbol, T.untyped]).returns(T.self_type) }
        def initialize(options = nil); end

        # RDL Type: (?Array<String>) -> (false or true)
        sig { params(argv: T::Array[String]).returns(T.any(FalseClass, TrueClass)) }
        def start(argv = nil); end

        # RDL Type: () -> XXX
        sig { returns(T.untyped) }
        def setup; end

        # RDL Type: () -> Array<URL>
        sig { returns(T::Array[URL]) }
        def execute; end

        # RDL Type: () -> String
        sig { returns(String) }
        def load!; end

        # RDL Type: () {(([ banner=: (String) -> XXX ] and [ separator: (String) -> XXX ])) -> XXX} -> OptionParser
        sig { returns(OptionParser) }
        def param_option_parser; end
      end

      module Commands
        class Campaigns
          # RDL Type: () -> Array<URL>
          sig { returns(T::Array[URL]) }
          def execute; end

          # RDL Type: ((String and [ description: () -> XXX ] and [ name: () -> XXX ] and [ organizations: () -> XXX ] and [ targets: () -> XXX ])) -> String
          sig { params(campaign: T.untyped).returns(String) }
          def print_resource(campaign); end
        end

        class Console
          # RDL Type: () -> nil
          sig { void }
          def setup; end

          # RDL Type: () -> Array<URL>
          sig { returns(T::Array[URL]) }
          def execute; end
        end

        class Creds
          # RDL Type: () -> Array<URL>
          sig { returns(T::Array[URL]) }
          def execute; end

          # RDL Type: (String) -> String
          sig { params(cred: String).returns(String) }
          def print_resource(cred); end
        end

        class Exec
          # RDL Type: (String, ?Array<String>) -> self
          sig { params(script: String, arguments: T::Array[String]).returns(T.self_type) }
          def initialize(script, arguments = nil); end

          # RDL Type: () -> (false or true)
          sig { returns(T.any(FalseClass, TrueClass)) }
          def execute; end

          # RDL Type: () {() -> (false or true)} -> (false or true)
          sig { returns(T.any(FalseClass, TrueClass)) }
          def setup_argv; end
        end

        class Fuzzer
          # RDL Type: () -> Number
          sig { returns(Integer) }
          def setup; end

          # RDL Type: () -> String
          sig { returns(String) }
          def execute; end

          # RDL Type: (String, String) -> Number
          sig { params(string: String, index: String).returns(Integer) }
          def fuzz_file(string, index); end

          # RDL Type: (String, String) -> Number
          sig { params(string: String, index: String).returns(Integer) }
          def fuzz_command(string, index); end

          # RDL Type: (String, String) -> Number
          sig { params(string: String, index: String).returns(Integer) }
          def fuzz_network(string, index); end

          # RDL Type: (String, String) -> String
          sig { params(string: String, index: String).returns(String) }
          def print_fuzz(string, index); end

          # RDL Type: (String) -> Object
          sig { params(string: String).returns(Object) }
          def parse_pattern(string); end

          # RDL Type: (String) -> String
          sig { params(string: String).returns(String) }
          def parse_substitution(string); end
        end

        class Help
          # RDL Type: () -> String
          sig { returns(String) }
          def execute; end
        end

        class Hosts
          # RDL Type: () -> Array<URL>
          sig { returns(T::Array[URL]) }
          def execute; end

          # RDL Type: ((String and [ address: () -> XXX ] and [ email_addresses: () -> XXX ] and [ ip_addresses: () -> XXX ] and [ last_scanned_at: () -> XXX ] and [ open_ports: () -> XXX ] and [ organization: () -> XXX ] and [ urls: () -> XXX ])) -> String
          sig { params(host: T.untyped).returns(String) }
          def print_resource(host); end
        end

        class Install
          # RDL Type: () -> (false or true)
          sig { returns(T.any(FalseClass, TrueClass)) }
          def setup; end

          # RDL Type: () -> String
          sig { returns(String) }
          def execute; end
        end

        class Ips
          # RDL Type: () -> Array<URL>
          sig { returns(T::Array[URL]) }
          def execute; end

          # RDL Type: ((String and [ address: () -> XXX ] and [ host_names: () -> XXX ] and [ last_scanned_at: () -> XXX ] and [ mac_addresses: () -> XXX ] and [ open_ports: () -> XXX ] and [ organization: () -> XXX ])) -> String
          sig { params(ip: T.untyped).returns(String) }
          def print_resource(ip); end
        end

        class Repos
          # RDL Type: () -> String
          sig { returns(String) }
          def execute; end

          # RDL Type: (([ description: () -> XXX ] and [ domain: () -> XXX ] and [ executables: () -> XXX ] and [ installed?: () -> XXX ] and [ name: () -> XXX ] and [ path: () -> XXX ] and [ scm: () -> XXX ] and [ script_paths: () -> XXX ] and [ source: () -> XXX ] and [ title: () -> XXX ] and [ uri: () -> XXX ] and [ verbose?: () -> XXX ] and [ website: () -> XXX ])) -> String
          sig { params(repo: T.untyped).returns(String) }
          def print_repository(repo); end
        end

        class Uninstall
          # RDL Type: () -> (false or true)
          sig { returns(T.any(FalseClass, TrueClass)) }
          def setup; end

          # RDL Type: () -> String
          sig { returns(String) }
          def execute; end
        end

        class Update
          # RDL Type: () -> (false or true)
          sig { returns(T.any(FalseClass, TrueClass)) }
          def setup; end

          # RDL Type: () -> String
          sig { returns(String) }
          def execute; end

          # RDL Type: ([ script_paths: () -> XXX ]) -> String
          sig { params(repository: T.untyped).returns(String) }
          def print_cache_errors(repository); end
        end

        class Urls
          # RDL Type: ((String and [ fragment: () -> XXX ] and [ host_name: () -> XXX ] and [ last_scanned_at: () -> XXX ] and [ path: () -> XXX ] and [ port: () -> XXX ] and [ query_params: () -> XXX ])) -> String
          sig { params(url: T.untyped).returns(String) }
          def print_resource(url); end
        end

        class Wordlist
          # RDL Type: () -> XXX
          sig { returns(T.untyped) }
          def execute; end

          # RDL Type: () -> Array<u>
          sig { returns(T::Array[T.untyped]) }
          def parse_template; end

          # RDL Type: () -> Ronin::Wordlist
          sig { returns(Ronin::Wordlist) }
          def wordlist; end

          # RDL Type: () {([ puts: (XXX) -> XXX ]) -> XXX} -> XXX
          sig { returns(T.untyped) }
          def output_stream; end
        end
      end
    end
  end
end
