(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_customized_accelerator__git_repository__basic_auth

type azurerm_spring_cloud_customized_accelerator__git_repository__ssh_auth

type azurerm_spring_cloud_customized_accelerator__git_repository
type azurerm_spring_cloud_customized_accelerator__timeouts
type azurerm_spring_cloud_customized_accelerator

val azurerm_spring_cloud_customized_accelerator :
  ?accelerator_tags:string prop list ->
  ?accelerator_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_customized_accelerator__timeouts ->
  name:string prop ->
  spring_cloud_accelerator_id:string prop ->
  git_repository:
    azurerm_spring_cloud_customized_accelerator__git_repository list ->
  string ->
  unit
