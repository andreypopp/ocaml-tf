(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_share__acl__access_policy
type azurerm_storage_share__acl
type azurerm_storage_share__timeouts
type azurerm_storage_share

val azurerm_storage_share :
  ?access_tier:string prop ->
  ?enabled_protocol:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?timeouts:azurerm_storage_share__timeouts ->
  name:string prop ->
  quota:float prop ->
  storage_account_name:string prop ->
  acl:azurerm_storage_share__acl list ->
  string ->
  unit
