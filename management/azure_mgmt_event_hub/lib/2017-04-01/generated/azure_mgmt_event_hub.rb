# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2017-04-01/generated/azure_mgmt_event_hub/module_definition'
require 'ms_rest_azure'

module Azure::ARM::EventHub::Api_2017_04_01
  autoload :Operations,                                         '2017-04-01/generated/azure_mgmt_event_hub/operations.rb'
  autoload :Namespaces,                                         '2017-04-01/generated/azure_mgmt_event_hub/namespaces.rb'
  autoload :EventHubs,                                          '2017-04-01/generated/azure_mgmt_event_hub/event_hubs.rb'
  autoload :ConsumerGroups,                                     '2017-04-01/generated/azure_mgmt_event_hub/consumer_groups.rb'
  autoload :EventHubManagementClient,                           '2017-04-01/generated/azure_mgmt_event_hub/event_hub_management_client.rb'

  module Models
    autoload :CaptureDescription,                                 '2017-04-01/generated/azure_mgmt_event_hub/models/capture_description.rb'
    autoload :RegenerateAccessKeyParameters,                      '2017-04-01/generated/azure_mgmt_event_hub/models/regenerate_access_key_parameters.rb'
    autoload :Destination,                                        '2017-04-01/generated/azure_mgmt_event_hub/models/destination.rb'
    autoload :Sku,                                                '2017-04-01/generated/azure_mgmt_event_hub/models/sku.rb'
    autoload :OperationDisplay,                                   '2017-04-01/generated/azure_mgmt_event_hub/models/operation_display.rb'
    autoload :EHNamespaceListResult,                              '2017-04-01/generated/azure_mgmt_event_hub/models/ehnamespace_list_result.rb'
    autoload :AuthorizationRuleListResult,                        '2017-04-01/generated/azure_mgmt_event_hub/models/authorization_rule_list_result.rb'
    autoload :EventHubListResult,                                 '2017-04-01/generated/azure_mgmt_event_hub/models/event_hub_list_result.rb'
    autoload :ErrorResponse,                                      '2017-04-01/generated/azure_mgmt_event_hub/models/error_response.rb'
    autoload :Operation,                                          '2017-04-01/generated/azure_mgmt_event_hub/models/operation.rb'
    autoload :ConsumerGroupListResult,                            '2017-04-01/generated/azure_mgmt_event_hub/models/consumer_group_list_result.rb'
    autoload :OperationListResult,                                '2017-04-01/generated/azure_mgmt_event_hub/models/operation_list_result.rb'
    autoload :CheckNameAvailabilityParameter,                     '2017-04-01/generated/azure_mgmt_event_hub/models/check_name_availability_parameter.rb'
    autoload :AccessKeys,                                         '2017-04-01/generated/azure_mgmt_event_hub/models/access_keys.rb'
    autoload :CheckNameAvailabilityResult,                        '2017-04-01/generated/azure_mgmt_event_hub/models/check_name_availability_result.rb'
    autoload :TrackedResource,                                    '2017-04-01/generated/azure_mgmt_event_hub/models/tracked_resource.rb'
    autoload :EHNamespace,                                        '2017-04-01/generated/azure_mgmt_event_hub/models/ehnamespace.rb'
    autoload :AuthorizationRule,                                  '2017-04-01/generated/azure_mgmt_event_hub/models/authorization_rule.rb'
    autoload :Eventhub,                                           '2017-04-01/generated/azure_mgmt_event_hub/models/eventhub.rb'
    autoload :ConsumerGroup,                                      '2017-04-01/generated/azure_mgmt_event_hub/models/consumer_group.rb'
    autoload :SkuName,                                            '2017-04-01/generated/azure_mgmt_event_hub/models/sku_name.rb'
    autoload :SkuTier,                                            '2017-04-01/generated/azure_mgmt_event_hub/models/sku_tier.rb'
    autoload :AccessRights,                                       '2017-04-01/generated/azure_mgmt_event_hub/models/access_rights.rb'
    autoload :KeyType,                                            '2017-04-01/generated/azure_mgmt_event_hub/models/key_type.rb'
    autoload :EntityStatus,                                       '2017-04-01/generated/azure_mgmt_event_hub/models/entity_status.rb'
    autoload :EncodingCaptureDescription,                         '2017-04-01/generated/azure_mgmt_event_hub/models/encoding_capture_description.rb'
    autoload :UnavailableReason,                                  '2017-04-01/generated/azure_mgmt_event_hub/models/unavailable_reason.rb'
  end
end
