(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config__start_time = {
  hours : float prop;  (** hours *)
  minutes : float prop;  (** minutes *)
}

type config__end_time = {
  hours : float prop;  (** hours *)
  minutes : float prop;  (** minutes *)
}

type config = {
  day : string prop;  (** day *)
  end_time : config__end_time list;  (** end_time *)
  start_time : config__start_time list;  (** start_time *)
}

type aws_connect_hours_of_operation

val aws_connect_hours_of_operation :
  ?hours_of_operation_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  unit ->
  aws_connect_hours_of_operation

val yojson_of_aws_connect_hours_of_operation :
  aws_connect_hours_of_operation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  config : config list prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  time_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?hours_of_operation_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?hours_of_operation_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource
