(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_action__forward__target_groups = {
  target_group_identifier : string prop;
      (** target_group_identifier *)
  weight : float prop;  (** weight *)
}

type default_action__forward = {
  target_groups : default_action__forward__target_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** target_groups *)
}

type default_action__fixed_response = {
  status_code : float prop;  (** status_code *)
}

type default_action = {
  fixed_response : default_action__fixed_response list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** fixed_response *)
  forward : default_action__forward list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** forward *)
}

type aws_vpclattice_listener

val aws_vpclattice_listener :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  listener_identifier:string prop ->
  service_identifier:string prop ->
  unit ->
  aws_vpclattice_listener

val yojson_of_aws_vpclattice_listener :
  aws_vpclattice_listener -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  default_action : default_action list prop;
  id : string prop;
  last_updated_at : string prop;
  listener_id : string prop;
  listener_identifier : string prop;
  name : string prop;
  port : float prop;
  protocol : string prop;
  service_arn : string prop;
  service_id : string prop;
  service_identifier : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  listener_identifier:string prop ->
  service_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  listener_identifier:string prop ->
  service_identifier:string prop ->
  string ->
  t Tf_core.resource
