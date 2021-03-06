# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Description of Rule Resource.
    #
    class Rule < Resource

      include MsRestAzure

      # @return [Action] Represents the filter actions which are allowed for
      # the transformation of a message that have been matched by a filter
      # expression.
      attr_accessor :action

      # @return [FilterType] Filter type that is evaluated against a
      # BrokeredMessage. Possible values include: 'SqlFilter',
      # 'CorrelationFilter'
      attr_accessor :filter_type

      # @return [SqlFilter] Properties of sqlFilter
      attr_accessor :sql_filter

      # @return [CorrelationFilter] Properties of correlationFilter
      attr_accessor :correlation_filter


      #
      # Mapper for Rule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Rule',
          type: {
            name: 'Composite',
            class_name: 'Rule',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              action: {
                required: false,
                serialized_name: 'properties.action',
                type: {
                  name: 'Composite',
                  class_name: 'Action'
                }
              },
              filter_type: {
                required: false,
                serialized_name: 'properties.filterType',
                type: {
                  name: 'Enum',
                  module: 'FilterType'
                }
              },
              sql_filter: {
                required: false,
                serialized_name: 'properties.sqlFilter',
                type: {
                  name: 'Composite',
                  class_name: 'SqlFilter'
                }
              },
              correlation_filter: {
                required: false,
                serialized_name: 'properties.correlationFilter',
                type: {
                  name: 'Composite',
                  class_name: 'CorrelationFilter'
                }
              }
            }
          }
        }
      end
    end
  end
end
