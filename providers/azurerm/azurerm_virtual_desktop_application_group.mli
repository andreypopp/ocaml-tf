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

type azurerm_virtual_desktop_application_group

val azurerm_virtual_desktop_application_group :
  ?default_desktop_display_name:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  host_pool_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  unit ->
  azurerm_virtual_desktop_application_group

val yojson_of_azurerm_virtual_desktop_application_group :
  azurerm_virtual_desktop_application_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_desktop_display_name : string prop;
  description : string prop;
  friendly_name : string prop;
  host_pool_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_desktop_display_name:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  host_pool_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?default_desktop_display_name:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  host_pool_id:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
