(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_batch_certificate__timeouts
type azurerm_batch_certificate

type t = private {
  account_name : string prop;
  certificate : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  public_data : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
  thumbprint_algorithm : string prop;
}

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
  t
