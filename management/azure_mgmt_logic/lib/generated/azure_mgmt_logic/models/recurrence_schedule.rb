# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    #
    class RecurrenceSchedule

      include MsRestAzure

      # @return [Array<Integer>] The minutes.
      attr_accessor :minutes

      # @return [Array<Integer>] The hours.
      attr_accessor :hours

      # @return [Array<DaysOfWeek>] The days of the week.
      attr_accessor :week_days

      # @return [Array<Integer>] The month days.
      attr_accessor :month_days

      # @return [Array<RecurrenceScheduleOccurrence>] The monthly occurrences.
      attr_accessor :monthly_occurrences


      #
      # Mapper for RecurrenceSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecurrenceSchedule',
          type: {
            name: 'Composite',
            class_name: 'RecurrenceSchedule',
            model_properties: {
              minutes: {
                required: false,
                serialized_name: 'minutes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              hours: {
                required: false,
                serialized_name: 'hours',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              week_days: {
                required: false,
                serialized_name: 'weekDays',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DaysOfWeekElementType',
                      type: {
                        name: 'Enum',
                        module: 'DaysOfWeek'
                      }
                  }
                }
              },
              month_days: {
                required: false,
                serialized_name: 'monthDays',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              monthly_occurrences: {
                required: false,
                serialized_name: 'monthlyOccurrences',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecurrenceScheduleOccurrenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecurrenceScheduleOccurrence'
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
