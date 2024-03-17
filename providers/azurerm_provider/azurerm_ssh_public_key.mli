(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_ssh_public_key__timeouts
type azurerm_ssh_public_key

val azurerm_ssh_public_key :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_ssh_public_key__timeouts ->
  location:string prop ->
  name:string prop ->
  public_key:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
