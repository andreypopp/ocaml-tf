(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_postgresql_cluster__maintenance_window = {
  day_of_week : float option; [@option]  (** day_of_week *)
  start_hour : float option; [@option]  (** start_hour *)
  start_minute : float option; [@option]  (** start_minute *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_cluster__maintenance_window *)

type azurerm_cosmosdb_postgresql_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_cluster__timeouts *)

type azurerm_cosmosdb_postgresql_cluster = {
  administrator_login_password : string option; [@option]
      (** administrator_login_password *)
  citus_version : string option; [@option]  (** citus_version *)
  coordinator_public_ip_access_enabled : bool option; [@option]
      (** coordinator_public_ip_access_enabled *)
  coordinator_server_edition : string option; [@option]
      (** coordinator_server_edition *)
  coordinator_storage_quota_in_mb : float option; [@option]
      (** coordinator_storage_quota_in_mb *)
  coordinator_vcore_count : float option; [@option]
      (** coordinator_vcore_count *)
  ha_enabled : bool option; [@option]  (** ha_enabled *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  node_count : float;  (** node_count *)
  node_public_ip_access_enabled : bool option; [@option]
      (** node_public_ip_access_enabled *)
  node_server_edition : string option; [@option]
      (** node_server_edition *)
  node_storage_quota_in_mb : float option; [@option]
      (** node_storage_quota_in_mb *)
  node_vcores : float option; [@option]  (** node_vcores *)
  point_in_time_in_utc : string option; [@option]
      (** point_in_time_in_utc *)
  preferred_primary_zone : string option; [@option]
      (** preferred_primary_zone *)
  resource_group_name : string;  (** resource_group_name *)
  shards_on_coordinator_enabled : bool option; [@option]
      (** shards_on_coordinator_enabled *)
  source_location : string option; [@option]  (** source_location *)
  source_resource_id : string option; [@option]
      (** source_resource_id *)
  sql_version : string option; [@option]  (** sql_version *)
  tags : (string * string) list option; [@option]  (** tags *)
  maintenance_window :
    azurerm_cosmosdb_postgresql_cluster__maintenance_window list;
  timeouts : azurerm_cosmosdb_postgresql_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_cluster *)

let azurerm_cosmosdb_postgresql_cluster ?administrator_login_password
    ?citus_version ?coordinator_public_ip_access_enabled
    ?coordinator_server_edition ?coordinator_storage_quota_in_mb
    ?coordinator_vcore_count ?ha_enabled ?id
    ?node_public_ip_access_enabled ?node_server_edition
    ?node_storage_quota_in_mb ?node_vcores ?point_in_time_in_utc
    ?preferred_primary_zone ?shards_on_coordinator_enabled
    ?source_location ?source_resource_id ?sql_version ?tags ?timeouts
    ~location ~name ~node_count ~resource_group_name
    ~maintenance_window __resource_id =
  let __resource_type = "azurerm_cosmosdb_postgresql_cluster" in
  let __resource =
    {
      administrator_login_password;
      citus_version;
      coordinator_public_ip_access_enabled;
      coordinator_server_edition;
      coordinator_storage_quota_in_mb;
      coordinator_vcore_count;
      ha_enabled;
      id;
      location;
      name;
      node_count;
      node_public_ip_access_enabled;
      node_server_edition;
      node_storage_quota_in_mb;
      node_vcores;
      point_in_time_in_utc;
      preferred_primary_zone;
      resource_group_name;
      shards_on_coordinator_enabled;
      source_location;
      source_resource_id;
      sql_version;
      tags;
      maintenance_window;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_postgresql_cluster __resource);
  ()
