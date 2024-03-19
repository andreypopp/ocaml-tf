(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type default_action__fixed_response

val default_action__fixed_response :
  status_code:float prop -> unit -> default_action__fixed_response

type default_action__forward__target_groups

val default_action__forward__target_groups :
  ?target_group_identifier:string prop ->
  ?weight:float prop ->
  unit ->
  default_action__forward__target_groups

type default_action__forward

val default_action__forward :
  target_groups:default_action__forward__target_groups list ->
  unit ->
  default_action__forward

type default_action

val default_action :
  fixed_response:default_action__fixed_response list ->
  forward:default_action__forward list ->
  unit ->
  default_action

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpclattice_listener

val aws_vpclattice_listener :
  ?id:string prop ->
  ?port:float prop ->
  ?service_arn:string prop ->
  ?service_identifier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  protocol:string prop ->
  default_action:default_action list ->
  unit ->
  aws_vpclattice_listener

val yojson_of_aws_vpclattice_listener :
  aws_vpclattice_listener -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  created_at : string prop;
  id : string prop;
  last_updated_at : string prop;
  listener_id : string prop;
  name : string prop;
  port : float prop;
  protocol : string prop;
  service_arn : string prop;
  service_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?port:float prop ->
  ?service_arn:string prop ->
  ?service_identifier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  protocol:string prop ->
  default_action:default_action list ->
  string ->
  t
