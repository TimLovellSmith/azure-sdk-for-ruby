# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Trigger based on status code.
    #
    class StatusCodesBasedTrigger

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] HTTP status code.
      attr_accessor :status

      # @return [Integer] SubStatus.
      attr_accessor :sub_status

      # @return [Integer] Win32 error code.
      attr_accessor :win32status

      # @return [Integer] Count.
      attr_accessor :count

      # @return [String] Time interval.
      attr_accessor :time_interval


      #
      # Mapper for StatusCodesBasedTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StatusCodesBasedTrigger',
          type: {
            name: 'Composite',
            class_name: 'StatusCodesBasedTrigger',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Number'
                }
              },
              sub_status: {
                required: false,
                serialized_name: 'subStatus',
                type: {
                  name: 'Number'
                }
              },
              win32status: {
                required: false,
                serialized_name: 'win32Status',
                type: {
                  name: 'Number'
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              time_interval: {
                required: false,
                serialized_name: 'timeInterval',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
