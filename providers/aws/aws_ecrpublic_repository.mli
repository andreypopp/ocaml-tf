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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?catalog_data:catalog_data list ->
  ?timeouts:timeouts ->
  repository_name:string prop ->
  unit ->
  aws_ecrpublic_repository

val yojson_of_aws_ecrpublic_repository :
  aws_ecrpublic_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  registry_id : string prop;
  repository_name : string prop;
  repository_uri : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?catalog_data:catalog_data list ->
  ?timeouts:timeouts ->
  repository_name:string prop ->
  string ->
  t

val make :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?catalog_data:catalog_data list ->
  ?timeouts:timeouts ->
  repository_name:string prop ->
  string ->
  t Tf_core.resource
