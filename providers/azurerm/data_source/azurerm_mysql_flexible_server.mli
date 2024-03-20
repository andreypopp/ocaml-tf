(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type high_availability = {
  mode : string prop;  (** mode *)
  standby_availability_zone : string prop;
      (** standby_availability_zone *)
}

type maintenance_window = {
  day_of_week : float prop;  (** day_of_week *)
  start_hour : float prop;  (** start_hour *)
  start_minute : float prop;  (** start_minute *)
}

type storage = {
  auto_grow_enabled : bool prop;  (** auto_grow_enabled *)
  io_scaling_enabled : bool prop;  (** io_scaling_enabled *)
  iops : float prop;  (** iops *)
  size_gb : float prop;  (** size_gb *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_mysql_flexible_server

val azurerm_mysql_flexible_server :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_mysql_flexible_server

val yojson_of_azurerm_mysql_flexible_server :
  azurerm_mysql_flexible_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  administrator_login : string prop;
  backup_retention_days : float prop;
  delegated_subnet_id : string prop;
  fqdn : string prop;
  geo_redundant_backup_enabled : bool prop;
  high_availability : high_availability list prop;
  id : string prop;
  location : string prop;
  maintenance_window : maintenance_window list prop;
  name : string prop;
  private_dns_zone_id : string prop;
  public_network_access_enabled : bool prop;
  replica_capacity : float prop;
  replication_role : string prop;
  resource_group_name : string prop;
  restore_point_in_time : string prop;
  sku_name : string prop;
  storage : storage list prop;
  tags : (string * string) list prop;
  version : string prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
