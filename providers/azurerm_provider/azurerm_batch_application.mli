(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_application__timeouts
type azurerm_batch_application

val azurerm_batch_application :
  ?allow_updates:bool prop ->
  ?default_version:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_batch_application__timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
