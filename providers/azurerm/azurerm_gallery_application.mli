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

type azurerm_gallery_application

val azurerm_gallery_application :
  ?description:string prop ->
  ?end_of_life_date:string prop ->
  ?eula:string prop ->
  ?id:string prop ->
  ?privacy_statement_uri:string prop ->
  ?release_note_uri:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_id:string prop ->
  location:string prop ->
  name:string prop ->
  supported_os_type:string prop ->
  unit ->
  azurerm_gallery_application

val yojson_of_azurerm_gallery_application :
  azurerm_gallery_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  end_of_life_date : string prop;
  eula : string prop;
  gallery_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  privacy_statement_uri : string prop;
  release_note_uri : string prop;
  supported_os_type : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?end_of_life_date:string prop ->
  ?eula:string prop ->
  ?id:string prop ->
  ?privacy_statement_uri:string prop ->
  ?release_note_uri:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_id:string prop ->
  location:string prop ->
  name:string prop ->
  supported_os_type:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?end_of_life_date:string prop ->
  ?eula:string prop ->
  ?id:string prop ->
  ?privacy_statement_uri:string prop ->
  ?release_note_uri:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  gallery_id:string prop ->
  location:string prop ->
  name:string prop ->
  supported_os_type:string prop ->
  string ->
  t Tf_core.resource
