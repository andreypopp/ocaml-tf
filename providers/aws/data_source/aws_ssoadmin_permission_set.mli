(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssoadmin_permission_set

val aws_ssoadmin_permission_set :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_arn:string prop ->
  unit ->
  aws_ssoadmin_permission_set

val yojson_of_aws_ssoadmin_permission_set :
  aws_ssoadmin_permission_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  relay_state : string prop;
  session_duration : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_arn:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_arn:string prop ->
  string ->
  t Tf_core.resource
