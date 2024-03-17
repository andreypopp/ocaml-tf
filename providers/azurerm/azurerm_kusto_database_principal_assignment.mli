(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_kusto_database_principal_assignment__timeouts
type azurerm_kusto_database_principal_assignment

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

val azurerm_kusto_database_principal_assignment :
  ?id:string prop ->
  ?timeouts:azurerm_kusto_database_principal_assignment__timeouts ->
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
