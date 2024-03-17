(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_listener__default_action__fixed_response
type aws_vpclattice_listener__default_action__forward__target_groups
type aws_vpclattice_listener__default_action__forward
type aws_vpclattice_listener__default_action
type aws_vpclattice_listener__timeouts
type aws_vpclattice_listener

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

val aws_vpclattice_listener :
  ?id:string prop ->
  ?port:float prop ->
  ?service_arn:string prop ->
  ?service_identifier:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpclattice_listener__timeouts ->
  name:string prop ->
  protocol:string prop ->
  default_action:aws_vpclattice_listener__default_action list ->
  string ->
  t
