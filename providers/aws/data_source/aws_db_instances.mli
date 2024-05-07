(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_db_instances

val aws_db_instances :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  unit ->
  aws_db_instances

val yojson_of_aws_db_instances : aws_db_instances -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance_arns : string list prop;
  instance_identifiers : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  filter:filter list ->
  string ->
  t Tf_core.resource
