(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config__health_check__matcher

val config__health_check__matcher :
  ?value:string prop -> unit -> config__health_check__matcher

type config__health_check

val config__health_check :
  ?enabled:bool prop ->
  ?health_check_interval_seconds:float prop ->
  ?health_check_timeout_seconds:float prop ->
  ?healthy_threshold_count:float prop ->
  ?path:string prop ->
  ?port:float prop ->
  ?protocol:string prop ->
  ?protocol_version:string prop ->
  ?unhealthy_threshold_count:float prop ->
  ?matcher:config__health_check__matcher list ->
  unit ->
  config__health_check

type config

val config :
  ?ip_address_type:string prop ->
  ?lambda_event_structure_version:string prop ->
  ?port:float prop ->
  ?protocol:string prop ->
  ?protocol_version:string prop ->
  ?vpc_identifier:string prop ->
  ?health_check:config__health_check list ->
  unit ->
  config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpclattice_target_group

val aws_vpclattice_target_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?config:config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_vpclattice_target_group

val yojson_of_aws_vpclattice_target_group :
  aws_vpclattice_target_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?config:config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?config:config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
