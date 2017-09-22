# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Continuous Web Job Information.
    #
    class ContinuousWebJob < MsRestAzure::ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ContinuousWebJobStatus] Job status. Possible values include:
      # 'Initializing', 'Starting', 'Running', 'PendingRestart', 'Stopped'
      attr_accessor :status

      # @return [String] Detailed status.
      attr_accessor :detailed_status

      # @return [String] Log URL.
      attr_accessor :log_url

      # @return [String] Job name. Used as job identifier in ARM resource URI.
      attr_accessor :continuous_web_job_name

      # @return [String] Run command.
      attr_accessor :run_command

      # @return [String] Job URL.
      attr_accessor :url

      # @return [String] Extra Info URL.
      attr_accessor :extra_info_url

      # @return [WebJobType] Job type. Possible values include: 'Continuous',
      # 'Triggered'
      attr_accessor :job_type

      # @return [String] Error information.
      attr_accessor :error

      # @return [Boolean] Using SDK?
      attr_accessor :using_sdk

      # @return Job settings.
      attr_accessor :settings


      #
      # Mapper for ContinuousWebJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContinuousWebJob',
          type: {
            name: 'Composite',
            class_name: 'ContinuousWebJob',
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'ContinuousWebJobStatus'
                }
              },
              detailed_status: {
                required: false,
                serialized_name: 'properties.detailedStatus',
                type: {
                  name: 'String'
                }
              },
              log_url: {
                required: false,
                serialized_name: 'properties.logUrl',
                type: {
                  name: 'String'
                }
              },
              continuous_web_job_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              run_command: {
                required: false,
                serialized_name: 'properties.runCommand',
                type: {
                  name: 'String'
                }
              },
              url: {
                required: false,
                serialized_name: 'properties.url',
                type: {
                  name: 'String'
                }
              },
              extra_info_url: {
                required: false,
                serialized_name: 'properties.extraInfoUrl',
                type: {
                  name: 'String'
                }
              },
              job_type: {
                required: false,
                serialized_name: 'properties.jobType',
                type: {
                  name: 'Enum',
                  module: 'WebJobType'
                }
              },
              error: {
                required: false,
                serialized_name: 'properties.error',
                type: {
                  name: 'String'
                }
              },
              using_sdk: {
                required: false,
                serialized_name: 'properties.usingSdk',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
