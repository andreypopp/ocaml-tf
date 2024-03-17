(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_federated_identity_credential__timeouts
type azurerm_federated_identity_credential

val azurerm_federated_identity_credential :
  ?id:string prop ->
  ?timeouts:azurerm_federated_identity_credential__timeouts ->
  audience:string prop list ->
  issuer:string prop ->
  name:string prop ->
  parent_id:string prop ->
  resource_group_name:string prop ->
  subject:string prop ->
  string ->
  unit
