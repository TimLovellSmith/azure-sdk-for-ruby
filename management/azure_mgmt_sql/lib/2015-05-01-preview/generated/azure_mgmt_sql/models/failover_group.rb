# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2015_05_01_preview
  module Models
    #
    # A failover group.
    #
    class FailoverGroup < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Resource location.
      attr_accessor :location

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags

      # @return [FailoverGroupReadWriteEndpoint] Read-write endpoint of the
      # failover group instance.
      attr_accessor :read_write_endpoint

      # @return [FailoverGroupReadOnlyEndpoint] Read-only endpoint of the
      # failover group instance.
      attr_accessor :read_only_endpoint

      # @return [FailoverGroupReplicationRole] Local replication role of the
      # failover group instance. Possible values include: 'Primary',
      # 'Secondary'
      attr_accessor :replication_role

      # @return [String] Replication state of the failover group instance.
      attr_accessor :replication_state

      # @return [Array<PartnerInfo>] List of partner server information for the
      # failover group.
      attr_accessor :partner_servers

      # @return [Array<String>] List of databases in the failover group.
      attr_accessor :databases


      #
      # Mapper for FailoverGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FailoverGroup',
          type: {
            name: 'Composite',
            class_name: 'FailoverGroup',
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
              location: {
                required: false,
                read_only: true,
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
              },
              read_write_endpoint: {
                required: true,
                serialized_name: 'properties.readWriteEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'FailoverGroupReadWriteEndpoint'
                }
              },
              read_only_endpoint: {
                required: false,
                serialized_name: 'properties.readOnlyEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'FailoverGroupReadOnlyEndpoint'
                }
              },
              replication_role: {
                required: false,
                read_only: true,
                serialized_name: 'properties.replicationRole',
                type: {
                  name: 'String'
                }
              },
              replication_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.replicationState',
                type: {
                  name: 'String'
                }
              },
              partner_servers: {
                required: true,
                serialized_name: 'properties.partnerServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PartnerInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PartnerInfo'
                      }
                  }
                }
              },
              databases: {
                required: false,
                serialized_name: 'properties.databases',
                type: {
                  name: 'Sequence',
                  element: {
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
