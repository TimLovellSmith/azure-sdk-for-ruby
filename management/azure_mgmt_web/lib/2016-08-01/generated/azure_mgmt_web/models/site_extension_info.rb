# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Site Extension Information.
    #
    class SiteExtensionInfo < MsRestAzure::ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Site extension ID.
      attr_accessor :site_extension_info_id

      # @return [String] Site extension title.
      attr_accessor :title

      # @return [SiteExtensionType] Site extension type. Possible values
      # include: 'Gallery', 'WebRoot'
      attr_accessor :site_extension_info_type

      # @return [String] Summary description.
      attr_accessor :summary

      # @return [String] Detailed description.
      attr_accessor :description

      # @return [String] Version information.
      attr_accessor :version

      # @return [String] Extension URL.
      attr_accessor :extension_url

      # @return [String] Project URL.
      attr_accessor :project_url

      # @return [String] Icon URL.
      attr_accessor :icon_url

      # @return [String] License URL.
      attr_accessor :license_url

      # @return [String] Feed URL.
      attr_accessor :feed_url

      # @return [Array<String>] List of authors.
      attr_accessor :authors

      # @return [String] Installer command line parameters.
      attr_accessor :installation_args

      # @return [DateTime] Published timestamp.
      attr_accessor :published_date_time

      # @return [Integer] Count of downloads.
      attr_accessor :download_count

      # @return [Boolean] <code>true</code> if the local version is the latest
      # version; <code>false</code> otherwise.
      attr_accessor :local_is_latest_version

      # @return [String] Local path.
      attr_accessor :local_path

      # @return [DateTime] Installed timestamp.
      attr_accessor :installed_date_time

      # @return [String] Provisioning state.
      attr_accessor :provisioning_state

      # @return [String] Site Extension comment.
      attr_accessor :comment


      #
      # Mapper for SiteExtensionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SiteExtensionInfo',
          type: {
            name: 'Composite',
            class_name: 'SiteExtensionInfo',
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
              site_extension_info_id: {
                required: false,
                serialized_name: 'properties.id',
                type: {
                  name: 'String'
                }
              },
              title: {
                required: false,
                serialized_name: 'properties.title',
                type: {
                  name: 'String'
                }
              },
              site_extension_info_type: {
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'Enum',
                  module: 'SiteExtensionType'
                }
              },
              summary: {
                required: false,
                serialized_name: 'properties.summary',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: false,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              extension_url: {
                required: false,
                serialized_name: 'properties.extensionUrl',
                type: {
                  name: 'String'
                }
              },
              project_url: {
                required: false,
                serialized_name: 'properties.projectUrl',
                type: {
                  name: 'String'
                }
              },
              icon_url: {
                required: false,
                serialized_name: 'properties.iconUrl',
                type: {
                  name: 'String'
                }
              },
              license_url: {
                required: false,
                serialized_name: 'properties.licenseUrl',
                type: {
                  name: 'String'
                }
              },
              feed_url: {
                required: false,
                serialized_name: 'properties.feedUrl',
                type: {
                  name: 'String'
                }
              },
              authors: {
                required: false,
                serialized_name: 'properties.authors',
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
              },
              installation_args: {
                required: false,
                serialized_name: 'properties.installationArgs',
                type: {
                  name: 'String'
                }
              },
              published_date_time: {
                required: false,
                serialized_name: 'properties.publishedDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              download_count: {
                required: false,
                serialized_name: 'properties.downloadCount',
                type: {
                  name: 'Number'
                }
              },
              local_is_latest_version: {
                required: false,
                serialized_name: 'properties.localIsLatestVersion',
                type: {
                  name: 'Boolean'
                }
              },
              local_path: {
                required: false,
                serialized_name: 'properties.localPath',
                type: {
                  name: 'String'
                }
              },
              installed_date_time: {
                required: false,
                serialized_name: 'properties.installedDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              comment: {
                required: false,
                serialized_name: 'properties.comment',
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
