# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The Elastic Pool DTU capability.
    #
    class ElasticPoolDtuCapability

      include MsRestAzure

      # @return [Integer] The maximum size of the database (see 'unit' for the
      # units).
      attr_accessor :limit

      # @return [Integer] The maximum number of databases supported.
      attr_accessor :max_database_count

      # @return [CapabilityStatus] The status of the capability. Possible
      # values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [Array<MaxSizeCapability>] The list of supported max sizes.
      attr_accessor :supported_max_sizes

      # @return [MaxSizeCapability] The included (free) max size for this
      # service level objective.
      attr_accessor :included_max_size

      # @return [Array<MaxSizeCapability>] The list of supported max database
      # sizes.
      attr_accessor :supported_per_database_max_sizes

      # @return [Array<ElasticPoolPerDatabaseMaxDtuCapability>] The list of
      # supported max database DTUs.
      attr_accessor :supported_per_database_max_dtus


      #
      # Mapper for ElasticPoolDtuCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ElasticPoolDtuCapability',
          type: {
            name: 'Composite',
            class_name: 'ElasticPoolDtuCapability',
            model_properties: {
              limit: {
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              max_database_count: {
                required: false,
                read_only: true,
                serialized_name: 'maxDatabaseCount',
                type: {
                  name: 'Number'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              supported_max_sizes: {
                required: false,
                read_only: true,
                serialized_name: 'supportedMaxSizes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MaxSizeCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MaxSizeCapability'
                      }
                  }
                }
              },
              included_max_size: {
                required: false,
                read_only: true,
                serialized_name: 'includedMaxSize',
                type: {
                  name: 'Composite',
                  class_name: 'MaxSizeCapability'
                }
              },
              supported_per_database_max_sizes: {
                required: false,
                read_only: true,
                serialized_name: 'supportedPerDatabaseMaxSizes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MaxSizeCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MaxSizeCapability'
                      }
                  }
                }
              },
              supported_per_database_max_dtus: {
                required: false,
                read_only: true,
                serialized_name: 'supportedPerDatabaseMaxDtus',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ElasticPoolPerDatabaseMaxDtuCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ElasticPoolPerDatabaseMaxDtuCapability'
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
