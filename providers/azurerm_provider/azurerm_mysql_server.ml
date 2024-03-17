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

type t = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  auto_grow_enabled : bool prop;
  backup_retention_days : float prop;
  create_mode : string prop;
  creation_source_server_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  infrastructure_encryption_enabled : bool prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  sku_name : string prop;
  ssl_enforcement_enabled : bool prop;
  ssl_minimal_tls_version_enforced : string prop;
  storage_mb : float prop;
  tags : (string * string) list prop;
  version : string prop;
}

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
    ({
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
      : azurerm_mysql_server)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_server __resource);
  let __resource_attributes =
    ({
       administrator_login =
         Prop.computed __resource_type __resource_id
           "administrator_login";
       administrator_login_password =
         Prop.computed __resource_type __resource_id
           "administrator_login_password";
       auto_grow_enabled =
         Prop.computed __resource_type __resource_id
           "auto_grow_enabled";
       backup_retention_days =
         Prop.computed __resource_type __resource_id
           "backup_retention_days";
       create_mode =
         Prop.computed __resource_type __resource_id "create_mode";
       creation_source_server_id =
         Prop.computed __resource_type __resource_id
           "creation_source_server_id";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       geo_redundant_backup_enabled =
         Prop.computed __resource_type __resource_id
           "geo_redundant_backup_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       infrastructure_encryption_enabled =
         Prop.computed __resource_type __resource_id
           "infrastructure_encryption_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       restore_point_in_time =
         Prop.computed __resource_type __resource_id
           "restore_point_in_time";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       ssl_enforcement_enabled =
         Prop.computed __resource_type __resource_id
           "ssl_enforcement_enabled";
       ssl_minimal_tls_version_enforced =
         Prop.computed __resource_type __resource_id
           "ssl_minimal_tls_version_enforced";
       storage_mb =
         Prop.computed __resource_type __resource_id "storage_mb";
       tags = Prop.computed __resource_type __resource_id "tags";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
