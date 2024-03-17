(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mysql_server__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mysql_server__identity *)

type azurerm_mysql_server__threat_detection_policy = {
  disabled_alerts : string list option; [@option]
      (** disabled_alerts *)
  email_account_admins : bool option; [@option]
      (** email_account_admins *)
  email_addresses : string list option; [@option]
      (** email_addresses *)
  enabled : bool option; [@option]  (** enabled *)
  retention_days : float option; [@option]  (** retention_days *)
  storage_account_access_key : string option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string option; [@option]  (** storage_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_mysql_server__threat_detection_policy *)

type azurerm_mysql_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mysql_server__timeouts *)

type azurerm_mysql_server = {
  administrator_login_password : string option; [@option]
      (** administrator_login_password *)
  auto_grow_enabled : bool option; [@option]
      (** auto_grow_enabled *)
  create_mode : string option; [@option]  (** create_mode *)
  creation_source_server_id : string option; [@option]
      (** creation_source_server_id *)
  infrastructure_encryption_enabled : bool option; [@option]
      (** infrastructure_encryption_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  restore_point_in_time : string option; [@option]
      (** restore_point_in_time *)
  sku_name : string;  (** sku_name *)
  ssl_enforcement_enabled : bool;  (** ssl_enforcement_enabled *)
  ssl_minimal_tls_version_enforced : string option; [@option]
      (** ssl_minimal_tls_version_enforced *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string;  (** version *)
  identity : azurerm_mysql_server__identity list;
  threat_detection_policy :
    azurerm_mysql_server__threat_detection_policy list;
  timeouts : azurerm_mysql_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_server *)

let azurerm_mysql_server ?administrator_login_password
    ?auto_grow_enabled ?create_mode ?creation_source_server_id
    ?infrastructure_encryption_enabled ?public_network_access_enabled
    ?restore_point_in_time ?ssl_minimal_tls_version_enforced ?tags
    ?timeouts ~location ~name ~resource_group_name ~sku_name
    ~ssl_enforcement_enabled ~version ~identity
    ~threat_detection_policy __resource_id =
  let __resource_type = "azurerm_mysql_server" in
  let __resource =
    {
      administrator_login_password;
      auto_grow_enabled;
      create_mode;
      creation_source_server_id;
      infrastructure_encryption_enabled;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      restore_point_in_time;
      sku_name;
      ssl_enforcement_enabled;
      ssl_minimal_tls_version_enforced;
      tags;
      version;
      identity;
      threat_detection_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_server __resource);
  ()
