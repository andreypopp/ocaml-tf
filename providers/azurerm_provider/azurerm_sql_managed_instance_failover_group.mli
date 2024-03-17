(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_sql_managed_instance_failover_group__read_write_endpoint_failover_policy

type azurerm_sql_managed_instance_failover_group__timeouts

type azurerm_sql_managed_instance_failover_group__partner_region = {
  location : string;  (** location *)
  role : string;  (** role *)
}
[@@deriving yojson_of]

type azurerm_sql_managed_instance_failover_group

val azurerm_sql_managed_instance_failover_group :
  ?readonly_endpoint_failover_policy_enabled:bool ->
  ?timeouts:azurerm_sql_managed_instance_failover_group__timeouts ->
  location:string ->
  managed_instance_name:string ->
  name:string ->
  partner_managed_instance_id:string ->
  resource_group_name:string ->
  read_write_endpoint_failover_policy:
    azurerm_sql_managed_instance_failover_group__read_write_endpoint_failover_policy
    list ->
  string ->
  unit
