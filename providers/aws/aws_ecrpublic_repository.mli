(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type catalog_data

val catalog_data :
  ?about_text:string prop ->
  ?architectures:string prop list ->
  ?description:string prop ->
  ?logo_image_blob:string prop ->
  ?operating_systems:string prop list ->
  ?usage_text:string prop ->
  unit ->
  catalog_data

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_ecrpublic_repository

val aws_ecrpublic_repository :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  repository_name:string prop ->
  catalog_data:catalog_data list ->
  unit ->
  aws_ecrpublic_repository

val yojson_of_aws_ecrpublic_repository :
  aws_ecrpublic_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  registry_id : string prop;
  repository_name : string prop;
  repository_uri : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  repository_name:string prop ->
  catalog_data:catalog_data list ->
  string ->
  t

val make :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  repository_name:string prop ->
  catalog_data:catalog_data list ->
  string ->
  t Tf_core.resource
