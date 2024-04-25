(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sharing__community_gallery

val sharing__community_gallery :
  eula:string prop ->
  prefix:string prop ->
  publisher_email:string prop ->
  publisher_uri:string prop ->
  unit ->
  sharing__community_gallery

type sharing

val sharing :
  ?community_gallery:sharing__community_gallery list ->
  permission:string prop ->
  unit ->
  sharing

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_shared_image_gallery

val azurerm_shared_image_gallery :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?sharing:sharing list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_shared_image_gallery

val yojson_of_azurerm_shared_image_gallery :
  azurerm_shared_image_gallery -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  unique_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?sharing:sharing list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?sharing:sharing list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
