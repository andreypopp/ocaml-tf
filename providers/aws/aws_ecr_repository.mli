(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption_configuration

val encryption_configuration :
  ?encryption_type:string prop ->
  ?kms_key:string prop ->
  unit ->
  encryption_configuration

type image_scanning_configuration

val image_scanning_configuration :
  scan_on_push:bool prop -> unit -> image_scanning_configuration

type timeouts

val timeouts : ?delete:string prop -> unit -> timeouts

type aws_ecr_repository

val aws_ecr_repository :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?image_tag_mutability:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?encryption_configuration:encryption_configuration list ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_ecr_repository

val yojson_of_aws_ecr_repository : aws_ecr_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  force_delete : bool prop;
  id : string prop;
  image_tag_mutability : string prop;
  name : string prop;
  registry_id : string prop;
  repository_url : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?image_tag_mutability:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?encryption_configuration:encryption_configuration list ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?image_tag_mutability:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?encryption_configuration:encryption_configuration list ->
  ?image_scanning_configuration:image_scanning_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
