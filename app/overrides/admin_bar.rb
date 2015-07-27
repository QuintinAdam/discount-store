Deface::Override.new(
  virtual_path: "layouts/spree_application",
  name: "admin_bar",
  insert_top: "body",
  partial: "spree/admin_bar/admin_bar",
)
