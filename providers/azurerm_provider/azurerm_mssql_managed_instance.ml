(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mssql_managed_instance__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance__identity *)

type azurerm_mssql_managed_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance__timeouts *)

type azurerm_mssql_managed_instance = {
  administrator_login : string;  (** administrator_login *)
  administrator_login_password : string;
      (** administrator_login_password *)
  collation : string option; [@option]  (** collation *)
  dns_zone_partner_id : string option; [@option]
      (** dns_zone_partner_id *)
  license_type : string;  (** license_type *)
  location : string;  (** location *)
  maintenance_configuration_name : string option; [@option]
      (** maintenance_configuration_name *)
  minimum_tls_version : string option; [@option]
      (** minimum_tls_version *)
  name : string;  (** name *)
  proxy_override : string option; [@option]  (** proxy_override *)
  public_data_endpoint_enabled : bool option; [@option]
      (** public_data_endpoint_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  storage_account_type : string option; [@option]
      (** storage_account_type *)
  storage_size_in_gb : float;  (** storage_size_in_gb *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timezone_id : string option; [@option]  (** timezone_id *)
  vcores : float;  (** vcores *)
  zone_redundant_enabled : bool option; [@option]
      (** zone_redundant_enabled *)
  identity : azurerm_mssql_managed_instance__identity list;
  timeouts : azurerm_mssql_managed_instance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance *)

let azurerm_mssql_managed_instance ?collation ?dns_zone_partner_id
    ?maintenance_configuration_name ?minimum_tls_version
    ?proxy_override ?public_data_endpoint_enabled
    ?storage_account_type ?tags ?timezone_id ?zone_redundant_enabled
    ?timeouts ~administrator_login ~administrator_login_password
    ~license_type ~location ~name ~resource_group_name ~sku_name
    ~storage_size_in_gb ~subnet_id ~vcores ~identity __resource_id =
  let __resource_type = "azurerm_mssql_managed_instance" in
  let __resource =
    {
      administrator_login;
      administrator_login_password;
      collation;
      dns_zone_partner_id;
      license_type;
      location;
      maintenance_configuration_name;
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
      zone_redundant_enabled;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_managed_instance __resource);
  ()
