(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_mssql_managed_instance_failover_group__read_write_endpoint_failover_policy

type azurerm_mssql_managed_instance_failover_group__timeouts

type azurerm_mssql_managed_instance_failover_group__partner_region = {
  location : string prop;  (** location *)
  role : string prop;  (** role *)
}

type azurerm_mssql_managed_instance_failover_group

type t = private {
  id : string prop;
  location : string prop;
  managed_instance_id : string prop;
  name : string prop;
  partner_managed_instance_id : string prop;
  partner_region :
    azurerm_mssql_managed_instance_failover_group__partner_region
    list
    prop;
  readonly_endpoint_failover_policy_enabled : bool prop;
  role : string prop;
}

val azurerm_mssql_managed_instance_failover_group :
  ?id:string prop ->
  ?readonly_endpoint_failover_policy_enabled:bool prop ->
  ?timeouts:azurerm_mssql_managed_instance_failover_group__timeouts ->
  location:string prop ->
  managed_instance_id:string prop ->
  name:string prop ->
  partner_managed_instance_id:string prop ->
  read_write_endpoint_failover_policy:
    azurerm_mssql_managed_instance_failover_group__read_write_endpoint_failover_policy
    list ->
  string ->
  t
