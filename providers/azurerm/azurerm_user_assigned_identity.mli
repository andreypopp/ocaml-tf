(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_user_assigned_identity__timeouts
type azurerm_user_assigned_identity

type t = private {
  client_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  principal_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  tenant_id : string prop;
}

val azurerm_user_assigned_identity :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_user_assigned_identity__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
