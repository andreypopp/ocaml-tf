(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type customer_managed_key

val customer_managed_key :
  ?geo_backup_key_vault_key_id:string prop ->
  ?geo_backup_user_assigned_identity_id:string prop ->
  ?key_vault_key_id:string prop ->
  ?primary_user_assigned_identity_id:string prop ->
  unit ->
  customer_managed_key

type high_availability

val high_availability :
  ?standby_availability_zone:string prop ->
  mode:string prop ->
  unit ->
  high_availability

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type maintenance_window

val maintenance_window :
  ?day_of_week:float prop ->
  ?start_hour:float prop ->
  ?start_minute:float prop ->
  unit ->
  maintenance_window

type storage

val storage :
  ?auto_grow_enabled:bool prop ->
  ?io_scaling_enabled:bool prop ->
  ?iops:float prop ->
  ?size_gb:float prop ->
  unit ->
  storage

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mysql_flexible_server

val azurerm_mysql_flexible_server :
  ?administrator_login:string prop ->
  ?administrator_password:string prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?delegated_subnet_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?point_in_time_restore_time_in_utc:string prop ->
  ?private_dns_zone_id:string prop ->
  ?replication_role:string prop ->
  ?sku_name:string prop ->
  ?source_server_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?zone:string prop ->
  ?customer_managed_key:customer_managed_key list ->
  ?high_availability:high_availability list ->
  ?identity:identity list ->
  ?maintenance_window:maintenance_window list ->
  ?storage:storage list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_mysql_flexible_server

val yojson_of_azurerm_mysql_flexible_server :
  azurerm_mysql_flexible_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  administrator_login : string prop;
  administrator_password : string prop;
  backup_retention_days : float prop;
  create_mode : string prop;
  delegated_subnet_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  point_in_time_restore_time_in_utc : string prop;
  private_dns_zone_id : string prop;
  public_network_access_enabled : bool prop;
  replica_capacity : float prop;
  replication_role : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  source_server_id : string prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?administrator_login:string prop ->
  ?administrator_password:string prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?delegated_subnet_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?point_in_time_restore_time_in_utc:string prop ->
  ?private_dns_zone_id:string prop ->
  ?replication_role:string prop ->
  ?sku_name:string prop ->
  ?source_server_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?zone:string prop ->
  ?customer_managed_key:customer_managed_key list ->
  ?high_availability:high_availability list ->
  ?identity:identity list ->
  ?maintenance_window:maintenance_window list ->
  ?storage:storage list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?administrator_login:string prop ->
  ?administrator_password:string prop ->
  ?backup_retention_days:float prop ->
  ?create_mode:string prop ->
  ?delegated_subnet_id:string prop ->
  ?geo_redundant_backup_enabled:bool prop ->
  ?id:string prop ->
  ?point_in_time_restore_time_in_utc:string prop ->
  ?private_dns_zone_id:string prop ->
  ?replication_role:string prop ->
  ?sku_name:string prop ->
  ?source_server_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?zone:string prop ->
  ?customer_managed_key:customer_managed_key list ->
  ?high_availability:high_availability list ->
  ?identity:identity list ->
  ?maintenance_window:maintenance_window list ->
  ?storage:storage list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
