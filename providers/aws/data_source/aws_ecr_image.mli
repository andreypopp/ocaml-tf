(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecr_image

val aws_ecr_image :
  ?id:string prop ->
  ?image_digest:string prop ->
  ?image_tag:string prop ->
  ?most_recent:bool prop ->
  ?registry_id:string prop ->
  repository_name:string prop ->
  unit ->
  aws_ecr_image

val yojson_of_aws_ecr_image : aws_ecr_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  image_digest : string prop;
  image_pushed_at : float prop;
  image_size_in_bytes : float prop;
  image_tag : string prop;
  image_tags : string list prop;
  image_uri : string prop;
  most_recent : bool prop;
  registry_id : string prop;
  repository_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?image_digest:string prop ->
  ?image_tag:string prop ->
  ?most_recent:bool prop ->
  ?registry_id:string prop ->
  repository_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?image_digest:string prop ->
  ?image_tag:string prop ->
  ?most_recent:bool prop ->
  ?registry_id:string prop ->
  repository_name:string prop ->
  string ->
  t Tf_core.resource
