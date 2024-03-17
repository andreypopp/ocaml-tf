(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_flexible_server__authentication = {
  active_directory_auth_enabled : bool option; [@option]
      (** active_directory_auth_enabled *)
  password_auth_enabled : bool option; [@option]
      (** password_auth_enabled *)
  tenant_id : string option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server__authentication *)

type azurerm_postgresql_flexible_server__customer_managed_key = {
  geo_backup_key_vault_key_id : string option; [@option]
      (** geo_backup_key_vault_key_id *)
  geo_backup_user_assigned_identity_id : string option; [@option]
      (** geo_backup_user_assigned_identity_id *)
  key_vault_key_id : string;  (** key_vault_key_id *)
  primary_user_assigned_identity_id : string option; [@option]
      (** primary_user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server__customer_managed_key *)

type azurerm_postgresql_flexible_server__high_availability = {
  mode : string;  (** mode *)
  standby_availability_zone : string option; [@option]
      (** standby_availability_zone *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server__high_availability *)

type azurerm_postgresql_flexible_server__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server__identity *)

type azurerm_postgresql_flexible_server__maintenance_window = {
  day_of_week : float option; [@option]  (** day_of_week *)
  start_hour : float option; [@option]  (** start_hour *)
  start_minute : float option; [@option]  (** start_minute *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server__maintenance_window *)

type azurerm_postgresql_flexible_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server__timeouts *)

type azurerm_postgresql_flexible_server = {
  administrator_password : string option; [@option]
      (** administrator_password *)
  auto_grow_enabled : bool option; [@option]
      (** auto_grow_enabled *)
  create_mode : string option; [@option]  (** create_mode *)
  delegated_subnet_id : string option; [@option]
      (** delegated_subnet_id *)
  geo_redundant_backup_enabled : bool option; [@option]
      (** geo_redundant_backup_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  point_in_time_restore_time_in_utc : string option; [@option]
      (** point_in_time_restore_time_in_utc *)
  replication_role : string option; [@option]
      (** replication_role *)
  resource_group_name : string;  (** resource_group_name *)
  source_server_id : string option; [@option]
      (** source_server_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone : string option; [@option]  (** zone *)
  authentication :
    azurerm_postgresql_flexible_server__authentication list;
  customer_managed_key :
    azurerm_postgresql_flexible_server__customer_managed_key list;
  high_availability :
    azurerm_postgresql_flexible_server__high_availability list;
  identity : azurerm_postgresql_flexible_server__identity list;
  maintenance_window :
    azurerm_postgresql_flexible_server__maintenance_window list;
  timeouts : azurerm_postgresql_flexible_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server *)

let azurerm_postgresql_flexible_server ?administrator_password
    ?auto_grow_enabled ?create_mode ?delegated_subnet_id
    ?geo_redundant_backup_enabled ?point_in_time_restore_time_in_utc
    ?replication_role ?source_server_id ?tags ?zone ?timeouts
    ~location ~name ~resource_group_name ~authentication
    ~customer_managed_key ~high_availability ~identity
    ~maintenance_window __resource_id =
  let __resource_type = "azurerm_postgresql_flexible_server" in
  let __resource =
    {
      administrator_password;
      auto_grow_enabled;
      create_mode;
      delegated_subnet_id;
      geo_redundant_backup_enabled;
      location;
      name;
      point_in_time_restore_time_in_utc;
      replication_role;
      resource_group_name;
      source_server_id;
      tags;
      zone;
      authentication;
      customer_managed_key;
      high_availability;
      identity;
      maintenance_window;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_flexible_server __resource);
  ()
