(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type partner_server

val partner_server : id:string prop -> unit -> partner_server

type read_write_endpoint_failover_policy

val read_write_endpoint_failover_policy :
  ?grace_minutes:float prop ->
  mode:string prop ->
  unit ->
  read_write_endpoint_failover_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_mssql_failover_group

val azurerm_mssql_failover_group :
  ?databases:string prop list ->
  ?id:string prop ->
  ?readonly_endpoint_failover_policy_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  partner_server:partner_server list ->
  read_write_endpoint_failover_policy:
    read_write_endpoint_failover_policy list ->
  unit ->
  azurerm_mssql_failover_group

val yojson_of_azurerm_mssql_failover_group :
  azurerm_mssql_failover_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  databases : string list prop;
  id : string prop;
  name : string prop;
  readonly_endpoint_failover_policy_enabled : bool prop;
  server_id : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?databases:string prop list ->
  ?id:string prop ->
  ?readonly_endpoint_failover_policy_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  partner_server:partner_server list ->
  read_write_endpoint_failover_policy:
    read_write_endpoint_failover_policy list ->
  string ->
  t

val make :
  ?databases:string prop list ->
  ?id:string prop ->
  ?readonly_endpoint_failover_policy_enabled:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  server_id:string prop ->
  partner_server:partner_server list ->
  read_write_endpoint_failover_policy:
    read_write_endpoint_failover_policy list ->
  string ->
  t Tf_core.resource
