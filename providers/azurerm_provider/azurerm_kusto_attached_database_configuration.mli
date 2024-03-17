(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_attached_database_configuration__sharing
type azurerm_kusto_attached_database_configuration__timeouts
type azurerm_kusto_attached_database_configuration

val azurerm_kusto_attached_database_configuration :
  ?default_principal_modification_kind:string ->
  ?timeouts:azurerm_kusto_attached_database_configuration__timeouts ->
  cluster_name:string ->
  cluster_resource_id:string ->
  database_name:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  sharing:azurerm_kusto_attached_database_configuration__sharing list ->
  string ->
  unit
