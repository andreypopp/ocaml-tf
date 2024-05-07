(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config__end_time

val config__end_time :
  hours:float prop -> minutes:float prop -> unit -> config__end_time

type config__start_time

val config__start_time :
  hours:float prop ->
  minutes:float prop ->
  unit ->
  config__start_time

type config

val config :
  day:string prop ->
  end_time:config__end_time list ->
  start_time:config__start_time list ->
  unit ->
  config

type aws_connect_hours_of_operation

val aws_connect_hours_of_operation :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  time_zone:string prop ->
  config:config list ->
  unit ->
  aws_connect_hours_of_operation

val yojson_of_aws_connect_hours_of_operation :
  aws_connect_hours_of_operation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  time_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  time_zone:string prop ->
  config:config list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  time_zone:string prop ->
  config:config list ->
  string ->
  t Tf_core.resource
