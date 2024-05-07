(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_federated_identity_credential

val azurerm_federated_identity_credential :
  ?id:string prop ->
  ?timeouts:timeouts ->
  audience:string prop list ->
  issuer:string prop ->
  name:string prop ->
  parent_id:string prop ->
  resource_group_name:string prop ->
  subject:string prop ->
  unit ->
  azurerm_federated_identity_credential

val yojson_of_azurerm_federated_identity_credential :
  azurerm_federated_identity_credential -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  audience : string list prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  parent_id : string prop;
  resource_group_name : string prop;
  subject : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  audience:string prop list ->
  issuer:string prop ->
  name:string prop ->
  parent_id:string prop ->
  resource_group_name:string prop ->
  subject:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  audience:string prop list ->
  issuer:string prop ->
  name:string prop ->
  parent_id:string prop ->
  resource_group_name:string prop ->
  subject:string prop ->
  string ->
  t Tf_core.resource
