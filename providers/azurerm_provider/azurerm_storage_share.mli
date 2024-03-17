(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_share__acl__access_policy
type azurerm_storage_share__acl
type azurerm_storage_share__timeouts
type azurerm_storage_share

val azurerm_storage_share :
  ?access_tier:string ->
  ?enabled_protocol:string ->
  ?id:string ->
  ?metadata:(string * string) list ->
  ?timeouts:azurerm_storage_share__timeouts ->
  name:string ->
  quota:float ->
  storage_account_name:string ->
  acl:azurerm_storage_share__acl list ->
  string ->
  unit
