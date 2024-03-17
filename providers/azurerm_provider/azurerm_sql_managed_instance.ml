(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_managed_instance__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_sql_managed_instance__identity *)

type azurerm_sql_managed_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_managed_instance__timeouts *)

type azurerm_sql_managed_instance = {
  administrator_login : string prop;  (** administrator_login *)
  administrator_login_password : string prop;
      (** administrator_login_password *)
  collation : string prop option; [@option]  (** collation *)
  dns_zone_partner_id : string prop option; [@option]
      (** dns_zone_partner_id *)
  id : string prop option; [@option]  (** id *)
  license_type : string prop;  (** license_type *)
  location : string prop;  (** location *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  proxy_override : string prop option; [@option]
      (** proxy_override *)
  public_data_endpoint_enabled : bool prop option; [@option]
      (** public_data_endpoint_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  storage_account_type : string prop option; [@option]
      (** storage_account_type *)
  storage_size_in_gb : float prop;  (** storage_size_in_gb *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timezone_id : string prop option; [@option]  (** timezone_id *)
  vcores : float prop;  (** vcores *)
  identity : azurerm_sql_managed_instance__identity list;
  timeouts : azurerm_sql_managed_instance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_managed_instance *)

let azurerm_sql_managed_instance ?collation ?dns_zone_partner_id ?id
    ?minimum_tls_version ?proxy_override
    ?public_data_endpoint_enabled ?storage_account_type ?tags
    ?timezone_id ?timeouts ~administrator_login
    ~administrator_login_password ~license_type ~location ~name
    ~resource_group_name ~sku_name ~storage_size_in_gb ~subnet_id
    ~vcores ~identity __resource_id =
  let __resource_type = "azurerm_sql_managed_instance" in
  let __resource =
    {
      administrator_login;
      administrator_login_password;
      collation;
      dns_zone_partner_id;
      id;
      license_type;
      location;
      minimum_tls_version;
      name;
      proxy_override;
      public_data_endpoint_enabled;
      resource_group_name;
      sku_name;
      storage_account_type;
      storage_size_in_gb;
      subnet_id;
      tags;
      timezone_id;
      vcores;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_managed_instance __resource);
  ()
