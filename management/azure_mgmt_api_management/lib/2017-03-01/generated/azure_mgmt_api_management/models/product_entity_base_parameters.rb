# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_07_14
  module Models
    #
    # Product Entity Base Parameters
    #
    class ProductEntityBaseParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Product description. May include HTML formatting tags.
      attr_accessor :description

      # @return [String] Product terms of use. Developers trying to subscribe
      # to the product will be presented and required to accept these terms
      # before they can complete the subscription process.
      attr_accessor :terms

      # @return [Boolean] Whether a product subscription is required for
      # accessing APIs included in this product. If true, the product is
      # referred to as "protected" and a valid subscription key is required for
      # a request to an API included in the product to succeed. If false, the
      # product is referred to as "open" and requests to an API included in the
      # product can be made without a subscription key. If property is omitted
      # when creating a new product it's value is assumed to be true.
      attr_accessor :subscription_required

      # @return [Boolean] whether subscription approval is required. If false,
      # new subscriptions will be approved automatically enabling developers to
      # call the product’s APIs immediately after subscribing. If true,
      # administrators must manually approve the subscription before the
      # developer can any of the product’s APIs. Can be present only if
      # subscriptionRequired property is present and has a value of false.
      attr_accessor :approval_required

      # @return [Integer] Whether the number of subscriptions a user can have
      # to this product at the same time. Set to null or omit to allow
      # unlimited per user subscriptions. Can be present only if
      # subscriptionRequired property is present and has a value of false.
      attr_accessor :subscriptions_limit

      # @return [ProductState] whether product is published or not. Published
      # products are discoverable by users of developer portal. Non published
      # products are visible only to administrators. Default state of Product
      # is notPublished. Possible values include: 'notPublished', 'published'
      attr_accessor :state


      #
      # Mapper for ProductEntityBaseParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProductEntityBaseParameters',
          type: {
            name: 'Composite',
            class_name: 'ProductEntityBaseParameters',
            model_properties: {
              description: {
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 1000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              terms: {
                required: false,
                serialized_name: 'terms',
                type: {
                  name: 'String'
                }
              },
              subscription_required: {
                required: false,
                serialized_name: 'subscriptionRequired',
                type: {
                  name: 'Boolean'
                }
              },
              approval_required: {
                required: false,
                serialized_name: 'approvalRequired',
                type: {
                  name: 'Boolean'
                }
              },
              subscriptions_limit: {
                required: false,
                serialized_name: 'subscriptionsLimit',
                type: {
                  name: 'Number'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'ProductState'
                }
              }
            }
          }
        }
      end
    end
  end
end
