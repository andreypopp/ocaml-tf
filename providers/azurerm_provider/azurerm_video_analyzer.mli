(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_video_analyzer__identity
type azurerm_video_analyzer__storage_account
type azurerm_video_analyzer__timeouts
type azurerm_video_analyzer

val azurerm_video_analyzer :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_video_analyzer__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  identity:azurerm_video_analyzer__identity list ->
  storage_account:azurerm_video_analyzer__storage_account list ->
  string ->
  unit
