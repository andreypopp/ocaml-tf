(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type partner_region = {
  location : string prop;  (** location *)
  role : string prop;  (** role *)
}

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

type azurerm_sql_managed_instance_failover_group

val azurerm_sql_managed_instance_failover_group :
  ?id:string prop ->
  ?readonly_endpoint_failover_policy_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  managed_instance_name:string prop ->
  name:string prop ->
  partner_managed_instance_id:string prop ->
  resource_group_name:string prop ->
  read_write_endpoint_failover_policy:
    read_write_endpoint_failover_policy list ->
  unit ->
  azurerm_sql_managed_instance_failover_group

val yojson_of_azurerm_sql_managed_instance_failover_group :
  azurerm_sql_managed_instance_failover_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  managed_instance_name : string prop;
  name : string prop;
  partner_managed_instance_id : string prop;
  partner_region : partner_region list prop;
  readonly_endpoint_failover_policy_enabled : bool prop;
  resource_group_name : string prop;
  role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?readonly_endpoint_failover_policy_enabled:bool prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  managed_instance_name:string prop ->
  name:string prop ->
  partner_managed_instance_id:string prop ->
  resource_group_name:string prop ->
  read_write_endpoint_failover_policy:
    read_write_endpoint_failover_policy list ->
  string ->
  t
