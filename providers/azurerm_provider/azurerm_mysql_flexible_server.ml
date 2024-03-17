(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mysql_flexible_server__customer_managed_key = {
  geo_backup_key_vault_key_id : string option; [@option]
      (** geo_backup_key_vault_key_id *)
  geo_backup_user_assigned_identity_id : string option; [@option]
      (** geo_backup_user_assigned_identity_id *)
  key_vault_key_id : string option; [@option]
      (** key_vault_key_id *)
  primary_user_assigned_identity_id : string option; [@option]
      (** primary_user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__customer_managed_key *)

type azurerm_mysql_flexible_server__high_availability = {
  mode : string;  (** mode *)
  standby_availability_zone : string option; [@option]
      (** standby_availability_zone *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__high_availability *)

type azurerm_mysql_flexible_server__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__identity *)

type azurerm_mysql_flexible_server__maintenance_window = {
  day_of_week : float option; [@option]  (** day_of_week *)
  start_hour : float option; [@option]  (** start_hour *)
  start_minute : float option; [@option]  (** start_minute *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__maintenance_window *)

type azurerm_mysql_flexible_server__storage = {
  auto_grow_enabled : bool option; [@option]
      (** auto_grow_enabled *)
  io_scaling_enabled : bool option; [@option]
      (** io_scaling_enabled *)
  iops : float option; [@option]  (** iops *)
  size_gb : float option; [@option]  (** size_gb *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__storage *)

type azurerm_mysql_flexible_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server__timeouts *)

type azurerm_mysql_flexible_server = {
  administrator_password : string option; [@option]
      (** administrator_password *)
  backup_retention_days : float option; [@option]
      (** backup_retention_days *)
  create_mode : string option; [@option]  (** create_mode *)
  delegated_subnet_id : string option; [@option]
      (** delegated_subnet_id *)
  geo_redundant_backup_enabled : bool option; [@option]
      (** geo_redundant_backup_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  point_in_time_restore_time_in_utc : string option; [@option]
      (** point_in_time_restore_time_in_utc *)
  private_dns_zone_id : string option; [@option]
      (** private_dns_zone_id *)
  resource_group_name : string;  (** resource_group_name *)
  source_server_id : string option; [@option]
      (** source_server_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone : string option; [@option]  (** zone *)
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

let azurerm_mysql_flexible_server ?administrator_password
    ?backup_retention_days ?create_mode ?delegated_subnet_id
    ?geo_redundant_backup_enabled ?point_in_time_restore_time_in_utc
    ?private_dns_zone_id ?source_server_id ?tags ?zone ?timeouts
    ~location ~name ~resource_group_name ~customer_managed_key
    ~high_availability ~identity ~maintenance_window ~storage
    __resource_id =
  let __resource_type = "azurerm_mysql_flexible_server" in
  let __resource =
    {
      administrator_password;
      backup_retention_days;
      create_mode;
      delegated_subnet_id;
      geo_redundant_backup_enabled;
      location;
      name;
      point_in_time_restore_time_in_utc;
      private_dns_zone_id;
      resource_group_name;
      source_server_id;
      tags;
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
