(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_customized_accelerator__git_repository__basic_auth

type azurerm_spring_cloud_customized_accelerator__git_repository__ssh_auth

type azurerm_spring_cloud_customized_accelerator__git_repository
type azurerm_spring_cloud_customized_accelerator__timeouts
type azurerm_spring_cloud_customized_accelerator

val azurerm_spring_cloud_customized_accelerator :
  ?accelerator_tags:string list ->
  ?accelerator_type:string ->
  ?description:string ->
  ?display_name:string ->
  ?icon_url:string ->
  ?id:string ->
  ?timeouts:azurerm_spring_cloud_customized_accelerator__timeouts ->
  name:string ->
  spring_cloud_accelerator_id:string ->
  git_repository:
    azurerm_spring_cloud_customized_accelerator__git_repository list ->
  string ->
  unit
