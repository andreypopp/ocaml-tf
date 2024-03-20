(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?update:string prop -> unit -> timeouts

type aws_ssoadmin_permission_set

val aws_ssoadmin_permission_set :
  ?description:string prop ->
  ?id:string prop ->
  ?relay_state:string prop ->
  ?session_duration:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  name:string prop ->
  unit ->
  aws_ssoadmin_permission_set

val yojson_of_aws_ssoadmin_permission_set :
  aws_ssoadmin_permission_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  relay_state : string prop;
  session_duration : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?relay_state:string prop ->
  ?session_duration:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?relay_state:string prop ->
  ?session_duration:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
