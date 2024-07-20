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

type azurerm_virtual_machine_gallery_application_assignment

val azurerm_virtual_machine_gallery_application_assignment :
  ?configuration_blob_uri:string prop ->
  ?id:string prop ->
  ?order:float prop ->
  ?tag:string prop ->
  ?timeouts:timeouts ->
  gallery_application_version_id:string prop ->
  virtual_machine_id:string prop ->
  unit ->
  azurerm_virtual_machine_gallery_application_assignment

val yojson_of_azurerm_virtual_machine_gallery_application_assignment :
  azurerm_virtual_machine_gallery_application_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  configuration_blob_uri : string prop;
  gallery_application_version_id : string prop;
  id : string prop;
  order : float prop;
  tag : string prop;
  virtual_machine_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?configuration_blob_uri:string prop ->
  ?id:string prop ->
  ?order:float prop ->
  ?tag:string prop ->
  ?timeouts:timeouts ->
  gallery_application_version_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t

val make :
  ?configuration_blob_uri:string prop ->
  ?id:string prop ->
  ?order:float prop ->
  ?tag:string prop ->
  ?timeouts:timeouts ->
  gallery_application_version_id:string prop ->
  virtual_machine_id:string prop ->
  string ->
  t Tf_core.resource
