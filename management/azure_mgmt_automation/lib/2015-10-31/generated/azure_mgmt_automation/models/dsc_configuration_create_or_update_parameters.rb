# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The parameters supplied to the create or update configuration operation.
    #
    class DscConfigurationCreateOrUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Gets or sets verbose log option.
      attr_accessor :log_verbose

      # @return [Boolean] Gets or sets progress log option.
      attr_accessor :log_progress

      # @return [ContentSource] Gets or sets the source.
      attr_accessor :source

      # @return [Hash{String => DscConfigurationParameter}] Gets or sets the
      # configuration parameters.
      attr_accessor :parameters

      # @return [String] Gets or sets the description of the configuration.
      attr_accessor :description

      # @return [String] Gets or sets name of the resource.
      attr_accessor :name

      # @return [String] Gets or sets the location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets the tags attached to the
      # resource.
      attr_accessor :tags


      #
      # Mapper for DscConfigurationCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscConfigurationCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'DscConfigurationCreateOrUpdateParameters',
            model_properties: {
              log_verbose: {
                required: false,
                serialized_name: 'properties.logVerbose',
                type: {
                  name: 'Boolean'
                }
              },
              log_progress: {
                required: false,
                serialized_name: 'properties.logProgress',
                type: {
                  name: 'Boolean'
                }
              },
              source: {
                required: true,
                serialized_name: 'properties.source',
                type: {
                  name: 'Composite',
                  class_name: 'ContentSource'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'DscConfigurationParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DscConfigurationParameter'
                      }
                  }
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
