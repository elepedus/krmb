# frozen_string_literal: true

module ActiveRecord
  module ConnectionAdapters
    if const_defined? :PostgreSQLAdapter
      class PostgreSQLAdapter
        NATIVE_DATABASE_TYPES.merge!(
          fuel_type: { name: 'character varying' },
          body_type: { name: 'character varying' },
          gearbox: { name: 'character varying' }
        )
      end
    end
  end
end
