(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_privacy

val data_privacy : child_directed:bool prop -> unit -> data_privacy

type members

val members :
  alias_id:string prop ->
  alias_name:string prop ->
  id:string prop ->
  name:string prop ->
  version:string prop ->
  unit ->
  members

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_lexv2models_bot

val aws_lexv2models_bot :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?test_bot_alias_tags:(string * string prop) list ->
  ?type_:string prop ->
  ?data_privacy:data_privacy list ->
  ?members:members list ->
  ?timeouts:timeouts ->
  idle_session_ttl_in_seconds:float prop ->
  name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_lexv2models_bot

val yojson_of_aws_lexv2models_bot : aws_lexv2models_bot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  test_bot_alias_tags : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?test_bot_alias_tags:(string * string prop) list ->
  ?type_:string prop ->
  ?data_privacy:data_privacy list ->
  ?members:members list ->
  ?timeouts:timeouts ->
  idle_session_ttl_in_seconds:float prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  ?test_bot_alias_tags:(string * string prop) list ->
  ?type_:string prop ->
  ?data_privacy:data_privacy list ->
  ?members:members list ->
  ?timeouts:timeouts ->
  idle_session_ttl_in_seconds:float prop ->
  name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
