(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sharing

val sharing :
  ?external_tables_to_exclude:string prop list ->
  ?external_tables_to_include:string prop list ->
  ?materialized_views_to_exclude:string prop list ->
  ?materialized_views_to_include:string prop list ->
  ?tables_to_exclude:string prop list ->
  ?tables_to_include:string prop list ->
  unit ->
  sharing

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_kusto_attached_database_configuration

val azurerm_kusto_attached_database_configuration :
  ?default_principal_modification_kind:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  cluster_resource_id:string prop ->
  database_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sharing:sharing list ->
  unit ->
  azurerm_kusto_attached_database_configuration

val yojson_of_azurerm_kusto_attached_database_configuration :
  azurerm_kusto_attached_database_configuration -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?default_principal_modification_kind:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  cluster_resource_id:string prop ->
  database_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sharing:sharing list ->
  string ->
  t

val make :
  ?default_principal_modification_kind:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  cluster_resource_id:string prop ->
  database_name:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sharing:sharing list ->
  string ->
  t Tf_core.resource
