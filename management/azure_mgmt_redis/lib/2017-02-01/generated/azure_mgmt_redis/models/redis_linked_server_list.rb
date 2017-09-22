# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis::Api_2017_02_01
  module Models
    #
    # List of linked server Ids of a Redis cache.
    #
    class RedisLinkedServerList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<RedisLinkedServer>] List of linked server Ids of a Redis
      # cache.
      attr_accessor :value


      #
      # Mapper for RedisLinkedServerList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisLinkedServerList',
          type: {
            name: 'Composite',
            class_name: 'RedisLinkedServerList',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RedisLinkedServerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RedisLinkedServer'
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
