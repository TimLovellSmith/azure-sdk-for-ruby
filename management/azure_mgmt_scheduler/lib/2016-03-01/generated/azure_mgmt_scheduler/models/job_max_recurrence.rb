# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ResourcesManagement::Api_2016_03_01
  module Models
    #
    # Model object.
    #
    #
    class JobMaxRecurrence

      include MsRestAzure

      include MsRest::JSONable
      # @return [RecurrenceFrequency] Gets or sets the frequency of recurrence
      # (second, minute, hour, day, week, month). Possible values include:
      # 'Minute', 'Hour', 'Day', 'Week', 'Month'
      attr_accessor :frequency

      # @return [Integer] Gets or sets the interval between retries.
      attr_accessor :interval


      #
      # Mapper for JobMaxRecurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobMaxRecurrence',
          type: {
            name: 'Composite',
            class_name: 'JobMaxRecurrence',
            model_properties: {
              frequency: {
                required: false,
                serialized_name: 'frequency',
                type: {
                  name: 'Enum',
                  module: 'RecurrenceFrequency'
                }
              },
              interval: {
                required: false,
                serialized_name: 'interval',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
