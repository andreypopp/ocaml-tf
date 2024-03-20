(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type git_repository__basic_auth

val git_repository__basic_auth :
  password:string prop ->
  username:string prop ->
  unit ->
  git_repository__basic_auth

type git_repository__ssh_auth

val git_repository__ssh_auth :
  ?host_key:string prop ->
  ?host_key_algorithm:string prop ->
  private_key:string prop ->
  unit ->
  git_repository__ssh_auth

type git_repository

val git_repository :
  ?branch:string prop ->
  ?ca_certificate_id:string prop ->
  ?commit:string prop ->
  ?git_tag:string prop ->
  ?interval_in_seconds:float prop ->
  ?path:string prop ->
  url:string prop ->
  basic_auth:git_repository__basic_auth list ->
  ssh_auth:git_repository__ssh_auth list ->
  unit ->
  git_repository

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_spring_cloud_customized_accelerator

val azurerm_spring_cloud_customized_accelerator :
  ?accelerator_tags:string prop list ->
  ?accelerator_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_accelerator_id:string prop ->
  git_repository:git_repository list ->
  unit ->
  azurerm_spring_cloud_customized_accelerator

val yojson_of_azurerm_spring_cloud_customized_accelerator :
  azurerm_spring_cloud_customized_accelerator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accelerator_tags : string list prop;
  accelerator_type : string prop;
  description : string prop;
  display_name : string prop;
  icon_url : string prop;
  id : string prop;
  name : string prop;
  spring_cloud_accelerator_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accelerator_tags:string prop list ->
  ?accelerator_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_accelerator_id:string prop ->
  git_repository:git_repository list ->
  string ->
  t

val make :
  ?accelerator_tags:string prop list ->
  ?accelerator_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?icon_url:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  spring_cloud_accelerator_id:string prop ->
  git_repository:git_repository list ->
  string ->
  t Tf_core.resource
