(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mysql_flexible_server__customer_managed_key = {
  geo_backup_key_vault_key_id : string prop option; [@option]
      (** geo_backup_key_vault_key_id *)
  geo_backup_user_assigned_identity_id : string prop option;
      [@option]
      (** geo_backup_user_assigned_identity_id *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  primary_user_assigned_identity_id : string prop option; [@option]
      (** primary_user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__customer_managed_key *)

type azurerm_mysql_flexible_server__high_availability = {
  mode : string prop;  (** mode *)
  standby_availability_zone : string prop option; [@option]
      (** standby_availability_zone *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__high_availability *)

type azurerm_mysql_flexible_server__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__identity *)

type azurerm_mysql_flexible_server__maintenance_window = {
  day_of_week : float prop option; [@option]  (** day_of_week *)
  start_hour : float prop option; [@option]  (** start_hour *)
  start_minute : float prop option; [@option]  (** start_minute *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__maintenance_window *)

type azurerm_mysql_flexible_server__storage = {
  auto_grow_enabled : bool prop option; [@option]
      (** auto_grow_enabled *)
  io_scaling_enabled : bool prop option; [@option]
      (** io_scaling_enabled *)
  iops : float prop option; [@option]  (** iops *)
  size_gb : float prop option; [@option]  (** size_gb *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__storage *)

type azurerm_mysql_flexible_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__timeouts *)

type azurerm_mysql_flexible_server = {
  administrator_login : string prop option; [@option]
      (** administrator_login *)
  administrator_password : string prop option; [@option]
      (** administrator_password *)
  backup_retention_days : float prop option; [@option]
      (** backup_retention_days *)
  create_mode : string prop option; [@option]  (** create_mode *)
  delegated_subnet_id : string prop option; [@option]
      (** delegated_subnet_id *)
  geo_redundant_backup_enabled : bool prop option; [@option]
      (** geo_redundant_backup_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  point_in_time_restore_time_in_utc : string prop option; [@option]
      (** point_in_time_restore_time_in_utc *)
  private_dns_zone_id : string prop option; [@option]
      (** private_dns_zone_id *)
  replication_role : string prop option; [@option]
      (** replication_role *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop option; [@option]  (** sku_name *)
  source_server_id : string prop option; [@option]
      (** source_server_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  version : string prop option; [@option]  (** version *)
  zone : string prop option; [@option]  (** zone *)
  customer_managed_key :
    azurerm_mysql_flexible_server__customer_managed_key list;
  high_availability :
    azurerm_mysql_flexible_server__high_availability list;
  identity : azurerm_mysql_flexible_server__identity list;
  maintenance_window :
    azurerm_mysql_flexible_server__maintenance_window list;
  storage : azurerm_mysql_flexible_server__storage list;
  timeouts : azurerm_mysql_flexible_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server *)

let azurerm_mysql_flexible_server ?administrator_login
    ?administrator_password ?backup_retention_days ?create_mode
    ?delegated_subnet_id ?geo_redundant_backup_enabled ?id
    ?point_in_time_restore_time_in_utc ?private_dns_zone_id
    ?replication_role ?sku_name ?source_server_id ?tags ?version
    ?zone ?timeouts ~location ~name ~resource_group_name
    ~customer_managed_key ~high_availability ~identity
    ~maintenance_window ~storage __resource_id =
  let __resource_type = "azurerm_mysql_flexible_server" in
  let __resource =
    {
      administrator_login;
      administrator_password;
      backup_retention_days;
      create_mode;
      delegated_subnet_id;
      geo_redundant_backup_enabled;
      id;
      location;
      name;
      point_in_time_restore_time_in_utc;
      private_dns_zone_id;
      replication_role;
      resource_group_name;
      sku_name;
      source_server_id;
      tags;
      version;
      zone;
      customer_managed_key;
      high_availability;
      identity;
      maintenance_window;
      storage;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_flexible_server __resource);
  ()
