#
# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Copyright:: Copyright (c) 2011 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require File.join(File.dirname(__FILE__), 'resource_database')
require File.join(File.dirname(__FILE__), 'provider_database_mysql_nogem')

class Chef
  class Resource
    class MysqlDatabaseNogem < Chef::Resource::Database

      def initialize(name, run_context=nil)
        super
        @resource_name = :mysql_database_nogem
        @provider = Chef::Provider::Database::Mysql
      end

    end
  end
end

