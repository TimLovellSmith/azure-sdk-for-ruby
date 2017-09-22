# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_10_01
  module Models
    #
    # The event for a webhook.
    #
    class Event < EventInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [EventRequestMessage] The event request message sent to the
      # service URI.
      attr_accessor :event_request_message

      # @return [EventResponseMessage] The event response message received from
      # the service URI.
      attr_accessor :event_response_message


      #
      # Mapper for Event class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Event',
          type: {
            name: 'Composite',
            class_name: 'Event',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              event_request_message: {
                required: false,
                serialized_name: 'eventRequestMessage',
                type: {
                  name: 'Composite',
                  class_name: 'EventRequestMessage'
                }
              },
              event_response_message: {
                required: false,
                serialized_name: 'eventResponseMessage',
                type: {
                  name: 'Composite',
                  class_name: 'EventResponseMessage'
                }
              }
            }
          }
        }
      end
    end
  end
end
