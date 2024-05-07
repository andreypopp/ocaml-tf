(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sfn_activity

val aws_sfn_activity :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_sfn_activity

val yojson_of_aws_sfn_activity : aws_sfn_activity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_date : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t Tf_core.resource
