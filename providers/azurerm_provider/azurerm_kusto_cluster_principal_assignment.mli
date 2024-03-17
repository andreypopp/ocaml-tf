(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_cluster_principal_assignment__timeouts
type azurerm_kusto_cluster_principal_assignment

val azurerm_kusto_cluster_principal_assignment :
  ?id:string prop ->
  ?timeouts:azurerm_kusto_cluster_principal_assignment__timeouts ->
  cluster_name:string prop ->
  name:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  resource_group_name:string prop ->
  role:string prop ->
  tenant_id:string prop ->
  string ->
  unit
