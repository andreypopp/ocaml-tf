(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_listener_rule__action__fixed_response
type aws_vpclattice_listener_rule__action__forward__target_groups
type aws_vpclattice_listener_rule__action__forward
type aws_vpclattice_listener_rule__action

type aws_vpclattice_listener_rule__match__http_match__header_matches__match

type aws_vpclattice_listener_rule__match__http_match__header_matches

type aws_vpclattice_listener_rule__match__http_match__path_match__match

type aws_vpclattice_listener_rule__match__http_match__path_match
type aws_vpclattice_listener_rule__match__http_match
type aws_vpclattice_listener_rule__match
type aws_vpclattice_listener_rule__timeouts
type aws_vpclattice_listener_rule

val aws_vpclattice_listener_rule :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpclattice_listener_rule__timeouts ->
  listener_identifier:string prop ->
  name:string prop ->
  priority:float prop ->
  service_identifier:string prop ->
  action:aws_vpclattice_listener_rule__action list ->
  match_:aws_vpclattice_listener_rule__match list ->
  string ->
  unit
