##
# writen by Ramon Brooker <rbrooker@aetherealmind.com>
# (c) 2017
##

# require "tau/server/version"
# require "tau/server/tau_command"
# require "thor"
require "version"
#require tau_command
require "thor"


module Tau
  module Server
    class Tau < Thor

        class_option    :all, :alias => :a, :type => :boolean, :banner => "will update the whole fleet"
         option    :group, :type => :string, :banner => "only acts on those units in a group -- also named set"
         option    :csv, :type => :string, :banner => "specifies a building(s)"
         option    :file, :type => :string, :banner => "specifies a building(s)"
         option    :host, :type => :string, :banner => "specifies a building(s) -- NOT USED"
         option    :domain, :type => :string, :banner => "specifies a building(s) -- NOT USED"
         option    :ibid, :type => :boolean, :banner => "uses the previous commands selections"

        option    :h, :type  => :boolean, :banner => "Displays this Help"

        desc "optionslist", "prints if the options list"
        def optionslist
          puts "
          #Universal Flags
          ip_address      unit IP address (defaut)

          -a --all        will update the whole fleet
          --group         Acts on those units in a group -- also named set
          -h --help       displays this
          -name           used to give the set a uniq identifier
          --csv           reads comma separed values from STD unless --file is called
          --file          take --file as list of commands in cvs format
          --host          if the address is using a dns hostname with domain   [TODO]
          --domain        if units are using dns hostnames with seperated domains
                          (ie unit.localation.domain.com,  etc.. )  [TODO]
          --ibid          repeat previous options
          "
        end


        desc "man", "displays the help man file"
        def man
          man_txt = File.open('config/help_file.txt')
          puts man_txt.read()
        end


      end
    end
  end
