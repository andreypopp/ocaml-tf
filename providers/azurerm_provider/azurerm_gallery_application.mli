(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_gallery_application__timeouts
type azurerm_gallery_application

val azurerm_gallery_application :
  ?description:string ->
  ?end_of_life_date:string ->
  ?eula:string ->
  ?privacy_statement_uri:string ->
  ?release_note_uri:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_gallery_application__timeouts ->
  gallery_id:string ->
  location:string ->
  name:string ->
  supported_os_type:string ->
  string ->
  unit
