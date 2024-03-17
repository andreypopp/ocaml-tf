(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_user_assigned_identity__timeouts
type azurerm_user_assigned_identity

val azurerm_user_assigned_identity :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_user_assigned_identity__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
