(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_federated_identity_credential__timeouts
type azurerm_federated_identity_credential

val azurerm_federated_identity_credential :
  ?id:string ->
  ?timeouts:azurerm_federated_identity_credential__timeouts ->
  audience:string list ->
  issuer:string ->
  name:string ->
  parent_id:string ->
  resource_group_name:string ->
  subject:string ->
  string ->
  unit
