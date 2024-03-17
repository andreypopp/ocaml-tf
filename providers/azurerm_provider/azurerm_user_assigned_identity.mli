(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_user_assigned_identity__timeouts
type azurerm_user_assigned_identity

val azurerm_user_assigned_identity :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_user_assigned_identity__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
