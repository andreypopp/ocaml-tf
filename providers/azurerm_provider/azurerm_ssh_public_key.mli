(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_ssh_public_key__timeouts
type azurerm_ssh_public_key

val azurerm_ssh_public_key :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_ssh_public_key__timeouts ->
  location:string ->
  name:string ->
  public_key:string ->
  resource_group_name:string ->
  string ->
  unit
