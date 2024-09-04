(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_configuration = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key : string prop;  (** kms_key *)
}

type image_scanning_configuration = {
  scan_on_push : bool prop;  (** scan_on_push *)
}

type aws_ecr_repository

val aws_ecr_repository :
  ?id:string prop ->
  ?registry_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_ecr_repository

val yojson_of_aws_ecr_repository : aws_ecr_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  encryption_configuration : encryption_configuration list prop;
  id : string prop;
  image_scanning_configuration :
    image_scanning_configuration list prop;
  image_tag_mutability : string prop;
  most_recent_image_tags : string list prop;
  name : string prop;
  registry_id : string prop;
  repository_url : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?registry_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?registry_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
