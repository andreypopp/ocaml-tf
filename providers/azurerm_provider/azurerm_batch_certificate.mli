(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_certificate__timeouts
type azurerm_batch_certificate

val azurerm_batch_certificate :
  ?id:string prop ->
  ?password:string prop ->
  ?timeouts:azurerm_batch_certificate__timeouts ->
  account_name:string prop ->
  certificate:string prop ->
  format:string prop ->
  resource_group_name:string prop ->
  thumbprint:string prop ->
  thumbprint_algorithm:string prop ->
  string ->
  unit
