module ShopifyAPI
  class Variant < Base
    include Metafields
    include DisablePrefixCheck

    conditional_prefix :product

    def inventory_quantity_adjustment=(new_value)
      raise(ShopifyAPI::ValidationException,
        "'inventory_quantity_adjustment' is deprecated - see https://help.shopify.com/en/api/guides/inventory-migration-guide",
        ) unless Base.api_version < ApiVersion.find_version('2019-10')
      super
    end

    def inventory_quantity=(new_value)
      raise(ShopifyAPI::ValidationException,
        "'inventory_quantity' is deprecated - see https://help.shopify.com/en/api/guides/inventory-migration-guide",
        ) unless Base.api_version < ApiVersion.find_version('2019-10')
      super
    end

    def old_inventory_quantity=(new_value)
      raise(ShopifyAPI::ValidationException,
        "'old_inventory_quantity' is deprecated - see https://help.shopify.com/en/api/guides/inventory-migration-guide",
        ) unless Base.api_version < ApiVersion.find_version('2019-10')
      super
    end
  end
end
