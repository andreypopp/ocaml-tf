(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_kusto_database_principal_assignment

val azurerm_kusto_database_principal_assignment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  resource_group_name:string prop ->
  role:string prop ->
  tenant_id:string prop ->
  unit ->
  azurerm_kusto_database_principal_assignment

val yojson_of_azurerm_kusto_database_principal_assignment :
  azurerm_kusto_database_principal_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster_name : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  principal_name : string prop;
  principal_type : string prop;
  resource_group_name : string prop;
  role : string prop;
  tenant_id : string prop;
  tenant_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  database_name:string prop ->
  name:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  resource_group_name:string prop ->
  role:string prop ->
  tenant_id:string prop ->
  string ->
  t
