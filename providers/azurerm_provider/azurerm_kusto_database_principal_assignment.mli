(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_database_principal_assignment__timeouts
type azurerm_kusto_database_principal_assignment

val azurerm_kusto_database_principal_assignment :
  ?timeouts:azurerm_kusto_database_principal_assignment__timeouts ->
  cluster_name:string ->
  database_name:string ->
  name:string ->
  principal_id:string ->
  principal_type:string ->
  resource_group_name:string ->
  role:string ->
  tenant_id:string ->
  string ->
  unit
