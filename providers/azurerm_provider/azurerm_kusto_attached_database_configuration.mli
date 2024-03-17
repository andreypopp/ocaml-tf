(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_attached_database_configuration__sharing
type azurerm_kusto_attached_database_configuration__timeouts
type azurerm_kusto_attached_database_configuration

type t = private {
  attached_database_names : string list prop;
  cluster_name : string prop;
  cluster_resource_id : string prop;
  database_name : string prop;
  default_principal_modification_kind : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val azurerm_kusto_attached_database_configuration :
  ?default_principal_modification_kind:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_kusto_attached_database_configuration__timeouts ->
  cluster_name:string prop ->
  cluster_resource_id:string prop ->
  database_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sharing:azurerm_kusto_attached_database_configuration__sharing list ->
  string ->
  t
