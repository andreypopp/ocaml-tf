(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_gallery_application__timeouts
type azurerm_gallery_application

type t = private {
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

val azurerm_gallery_application :
  ?description:string prop ->
  ?end_of_life_date:string prop ->
  ?eula:string prop ->
  ?id:string prop ->
  ?privacy_statement_uri:string prop ->
  ?release_note_uri:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_gallery_application__timeouts ->
  gallery_id:string prop ->
  location:string prop ->
  name:string prop ->
  supported_os_type:string prop ->
  string ->
  t
