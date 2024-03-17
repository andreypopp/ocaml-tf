(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mysql_server__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mysql_server__identity *)

type azurerm_mysql_server__threat_detection_policy = {
  disabled_alerts : string prop list option; [@option]
      (** disabled_alerts *)
  email_account_admins : bool prop option; [@option]
      (** email_account_admins *)
  email_addresses : string prop list option; [@option]
      (** email_addresses *)
  enabled : bool prop option; [@option]  (** enabled *)
  retention_days : float prop option; [@option]
      (** retention_days *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_mysql_server__threat_detection_policy *)

type azurerm_mysql_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mysql_server__timeouts *)

type azurerm_mysql_server = {
  administrator_login : string prop option; [@option]
      (** administrator_login *)
  administrator_login_password : string prop option; [@option]
      (** administrator_login_password *)
  auto_grow_enabled : bool prop option; [@option]
      (** auto_grow_enabled *)
  backup_retention_days : float prop option; [@option]
      (** backup_retention_days *)
  create_mode : string prop option; [@option]  (** create_mode *)
  creation_source_server_id : string prop option; [@option]
      (** creation_source_server_id *)
  geo_redundant_backup_enabled : bool prop option; [@option]
      (** geo_redundant_backup_enabled *)
  id : string prop option; [@option]  (** id *)
  infrastructure_encryption_enabled : bool prop option; [@option]
      (** infrastructure_encryption_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  restore_point_in_time : string prop option; [@option]
      (** restore_point_in_time *)
  sku_name : string prop;  (** sku_name *)
  ssl_enforcement_enabled : bool prop;
      (** ssl_enforcement_enabled *)
  ssl_minimal_tls_version_enforced : string prop option; [@option]
      (** ssl_minimal_tls_version_enforced *)
  storage_mb : float prop option; [@option]  (** storage_mb *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  version : string prop;  (** version *)
  identity : azurerm_mysql_server__identity list;
  threat_detection_policy :
    azurerm_mysql_server__threat_detection_policy list;
  timeouts : azurerm_mysql_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_server *)

let azurerm_mysql_server ?administrator_login
    ?administrator_login_password ?auto_grow_enabled
    ?backup_retention_days ?create_mode ?creation_source_server_id
    ?geo_redundant_backup_enabled ?id
    ?infrastructure_encryption_enabled ?public_network_access_enabled
    ?restore_point_in_time ?ssl_minimal_tls_version_enforced
    ?storage_mb ?tags ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~ssl_enforcement_enabled ~version ~identity
    ~threat_detection_policy __resource_id =
  let __resource_type = "azurerm_mysql_server" in
  let __resource =
    {
      administrator_login;
      administrator_login_password;
      auto_grow_enabled;
      backup_retention_days;
      create_mode;
      creation_source_server_id;
      geo_redundant_backup_enabled;
      id;
      infrastructure_encryption_enabled;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      restore_point_in_time;
      sku_name;
      ssl_enforcement_enabled;
      ssl_minimal_tls_version_enforced;
      storage_mb;
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
