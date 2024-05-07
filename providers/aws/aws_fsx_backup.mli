(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_fsx_backup

val aws_fsx_backup :
  ?file_system_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_id:string prop ->
  ?timeouts:timeouts ->
  unit ->
  aws_fsx_backup

val yojson_of_aws_fsx_backup : aws_fsx_backup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  file_system_id : string prop;
  id : string prop;
  kms_key_id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  volume_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?file_system_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?file_system_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?volume_id:string prop ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
