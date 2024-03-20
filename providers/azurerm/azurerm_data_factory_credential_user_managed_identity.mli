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

type azurerm_data_factory_credential_user_managed_identity

val azurerm_data_factory_credential_user_managed_identity :
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  identity_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_credential_user_managed_identity

val yojson_of_azurerm_data_factory_credential_user_managed_identity :
  azurerm_data_factory_credential_user_managed_identity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  identity_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  identity_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?annotations:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  identity_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
