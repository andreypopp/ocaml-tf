(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_instance_failover_group__read_write_endpoint_failover_policy

type azurerm_mssql_managed_instance_failover_group__timeouts

type azurerm_mssql_managed_instance_failover_group__partner_region = {
  location : string;  (** location *)
  role : string;  (** role *)
}

type azurerm_mssql_managed_instance_failover_group

val azurerm_mssql_managed_instance_failover_group :
  ?id:string ->
  ?readonly_endpoint_failover_policy_enabled:bool ->
  ?timeouts:azurerm_mssql_managed_instance_failover_group__timeouts ->
  location:string ->
  managed_instance_id:string ->
  name:string ->
  partner_managed_instance_id:string ->
  read_write_endpoint_failover_policy:
    azurerm_mssql_managed_instance_failover_group__read_write_endpoint_failover_policy
    list ->
  string ->
  unit
