# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # logo for store
  # config.logo = "triquest/logo.png"
  # config.admin_interface_logo = "triquest/logo.png"
  # config.products_per_page = 20
  # config.admin_products_per_page = 20
  # begin
    # config.default_country_id = Spree::Country.find_by_name('United States').id
  # rescue
    # such a good work around =D
  # end
  config.shipping_instructions = true
  config.alternative_shipping_phone = true
  # config.show_descendents = false
  config.always_include_confirm_step = true
  config.company = true # Request company field for billing and shipping addr

  # config.address_requires_state =  true # should state/state_name be required
  # config.admin_interface_logo =  'logo/spree_50.png'
  # config.admin_products_per_page =  10
  # config.allow_checkout_on_gateway_error =  false
  # config.allow_guest_checkout =  true
  # config.always_put_site_name_in_title =  true
  # config.auto_capture =  false # automatically capture the credit card (as opposed to just authorize and capture later)
  # config.auto_capture_on_dispatch =  false # Captures payment for each shipment in Shipment#after_ship callback, and makes Shipment.ready when payment authorized.
  # config.binary_inventory_cache =  false # only invalidate product cache when a stock item changes whether it is in_stock
  # config.check_for_spree_alerts =  true
  # config.checkout_zone =  nil # replace with the name of a zone if you would like to limit the countries
  # config.company =  false # Request company field for billing and shipping addr
  # config.currency =  "USD"
  # config.expedited_exchanges =  false # NOTE this requires payment profiles to be supported on your gateway of choice as well as a delayed job handler to be configured with activejob. kicks off an exchange shipment upon return authorization save. charge customer if they do not return items within timely manner.
  # config.expedited_exchanges_days_window =  14 # the amount of days the customer has to return their item after the expedited exchange is shipped in order to avoid being charged
  # config.last_check_for_spree_alerts =  nil
  config.layout =  'layouts/spree_application'
  config.max_level_in_taxons_menu = 2 # maximum nesting level in taxons menu
  # config.orders_per_page =  15
  # config.properties_per_page =  15
  # config.products_per_page =  12
  # config.promotions_per_page =  15
  # config.customer_returns_per_page =  15
  # config.require_master_price =  true
  # config.restock_inventory =  true # Determines if a return item is restocked automatically once it has been received
  # config.return_eligibility_number_of_days =  365
  # config.show_only_complete_orders_by_default =  true
  # config.show_variant_full_price =  false #Displays variant full price or difference with product price. Default false to be compatible with older behavior
  # config.show_products_without_price =  false
  config.show_raw_product_description =  true
  # config.tax_using_ship_address =  true
  config.track_inventory_levels =  false # Determines whether to track on_hand values for variants / products.

  # # # Default mail headers settings
  # config.send_core_emails =  true
end

Spree.user_class = "Spree::User"
