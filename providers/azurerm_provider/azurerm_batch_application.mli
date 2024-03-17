(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_application__timeouts
type azurerm_batch_application

val azurerm_batch_application :
  ?allow_updates:bool ->
  ?default_version:string ->
  ?display_name:string ->
  ?timeouts:azurerm_batch_application__timeouts ->
  account_name:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
