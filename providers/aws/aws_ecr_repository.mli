(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  encryption_configuration:encryption_configuration list ->
  image_scanning_configuration:image_scanning_configuration list ->
  unit ->
  aws_ecr_repository

val yojson_of_aws_ecr_repository : aws_ecr_repository -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  force_delete : bool prop;
  id : string prop;
  image_tag_mutability : string prop;
  name : string prop;
  registry_id : string prop;
  repository_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?image_tag_mutability:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  encryption_configuration:encryption_configuration list ->
  image_scanning_configuration:image_scanning_configuration list ->
  string ->
  t
