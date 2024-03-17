(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_certificate__timeouts
type azurerm_batch_certificate

val azurerm_batch_certificate :
  ?password:string ->
  ?timeouts:azurerm_batch_certificate__timeouts ->
  account_name:string ->
  certificate:string ->
  format:string ->
  resource_group_name:string ->
  thumbprint:string ->
  thumbprint_algorithm:string ->
  string ->
  unit
