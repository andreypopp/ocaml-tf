(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_managed_instance_failover_group__read_write_endpoint_failover_policy

type azurerm_sql_managed_instance_failover_group__timeouts

type azurerm_sql_managed_instance_failover_group__partner_region = {
  location : string prop;  (** location *)
  role : string prop;  (** role *)
}

type azurerm_sql_managed_instance_failover_group

type t = private {
  id : string prop;
  location : string prop;
  managed_instance_name : string prop;
  name : string prop;
  partner_managed_instance_id : string prop;
  partner_region :
    azurerm_sql_managed_instance_failover_group__partner_region list
    prop;
  readonly_endpoint_failover_policy_enabled : bool prop;
  resource_group_name : string prop;
  role : string prop;
}

val azurerm_sql_managed_instance_failover_group :
  ?id:string prop ->
  ?readonly_endpoint_failover_policy_enabled:bool prop ->
  ?timeouts:azurerm_sql_managed_instance_failover_group__timeouts ->
  location:string prop ->
  managed_instance_name:string prop ->
  name:string prop ->
  partner_managed_instance_id:string prop ->
  resource_group_name:string prop ->
  read_write_endpoint_failover_policy:
    azurerm_sql_managed_instance_failover_group__read_write_endpoint_failover_policy
    list ->
  string ->
  t
