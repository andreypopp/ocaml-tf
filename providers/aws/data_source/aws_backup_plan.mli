(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_backup_plan

val aws_backup_plan :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  plan_id:string prop ->
  unit ->
  aws_backup_plan

val yojson_of_aws_backup_plan : aws_backup_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  plan_id : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  plan_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  plan_id:string prop ->
  string ->
  t Tf_core.resource
