(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type quick_connect_config__user_config = {
  contact_flow_id : string prop;  (** contact_flow_id *)
  user_id : string prop;  (** user_id *)
}

type quick_connect_config__queue_config = {
  contact_flow_id : string prop;  (** contact_flow_id *)
  queue_id : string prop;  (** queue_id *)
}

type quick_connect_config__phone_config = {
  phone_number : string prop;  (** phone_number *)
}

type quick_connect_config = {
  phone_config : quick_connect_config__phone_config list;
      (** phone_config *)
  queue_config : quick_connect_config__queue_config list;
      (** queue_config *)
  quick_connect_type : string prop;  (** quick_connect_type *)
  user_config : quick_connect_config__user_config list;
      (** user_config *)
}

type aws_connect_quick_connect

val aws_connect_quick_connect :
  ?id:string prop ->
  ?name:string prop ->
  ?quick_connect_id:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  unit ->
  aws_connect_quick_connect

val yojson_of_aws_connect_quick_connect :
  aws_connect_quick_connect -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  quick_connect_config : quick_connect_config list prop;
  quick_connect_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?quick_connect_id:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?quick_connect_id:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource
