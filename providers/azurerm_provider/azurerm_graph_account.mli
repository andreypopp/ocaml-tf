(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_graph_account__timeouts
type azurerm_graph_account

type t = private {
  application_id : string prop;
  billing_plan_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_graph_account :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_graph_account__timeouts ->
  application_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
