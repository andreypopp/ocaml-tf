(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type partner_servers

val partner_servers : id:string prop -> unit -> partner_servers

type read_write_endpoint_failover_policy

val read_write_endpoint_failover_policy :
  ?grace_minutes:float prop ->
  mode:string prop ->
  unit ->
  read_write_endpoint_failover_policy

type readonly_endpoint_failover_policy

val readonly_endpoint_failover_policy :
  mode:string prop -> unit -> readonly_endpoint_failover_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_sql_failover_group

val azurerm_sql_failover_group :
  ?databases:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?readonly_endpoint_failover_policy:
    readonly_endpoint_failover_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  partner_servers:partner_servers list ->
  read_write_endpoint_failover_policy:
    read_write_endpoint_failover_policy list ->
  unit ->
  azurerm_sql_failover_group

val yojson_of_azurerm_sql_failover_group :
  azurerm_sql_failover_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  databases : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  role : string prop;
  server_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?databases:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?readonly_endpoint_failover_policy:
    readonly_endpoint_failover_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  partner_servers:partner_servers list ->
  read_write_endpoint_failover_policy:
    read_write_endpoint_failover_policy list ->
  string ->
  t

val make :
  ?databases:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?readonly_endpoint_failover_policy:
    readonly_endpoint_failover_policy list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  server_name:string prop ->
  partner_servers:partner_servers list ->
  read_write_endpoint_failover_policy:
    read_write_endpoint_failover_policy list ->
  string ->
  t Tf_core.resource
