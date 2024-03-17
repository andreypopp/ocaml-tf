(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_video_analyzer__identity
type azurerm_video_analyzer__storage_account
type azurerm_video_analyzer__timeouts
type azurerm_video_analyzer

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_video_analyzer :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_video_analyzer__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  identity:azurerm_video_analyzer__identity list ->
  storage_account:azurerm_video_analyzer__storage_account list ->
  string ->
  t
