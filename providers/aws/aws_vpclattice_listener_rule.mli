(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action__fixed_response

val action__fixed_response :
  status_code:float prop -> unit -> action__fixed_response

type action__forward__target_groups

val action__forward__target_groups :
  ?weight:float prop ->
  target_group_identifier:string prop ->
  unit ->
  action__forward__target_groups

type action__forward

val action__forward :
  target_groups:action__forward__target_groups list ->
  unit ->
  action__forward

type action

val action :
  ?fixed_response:action__fixed_response list ->
  ?forward:action__forward list ->
  unit ->
  action

type match__http_match__header_matches__match

val match__http_match__header_matches__match :
  ?contains:string prop ->
  ?exact:string prop ->
  ?prefix:string prop ->
  unit ->
  match__http_match__header_matches__match

type match__http_match__header_matches

val match__http_match__header_matches :
  ?case_sensitive:bool prop ->
  name:string prop ->
  match_:match__http_match__header_matches__match list ->
  unit ->
  match__http_match__header_matches

type match__http_match__path_match__match

val match__http_match__path_match__match :
  ?exact:string prop ->
  ?prefix:string prop ->
  unit ->
  match__http_match__path_match__match

type match__http_match__path_match

val match__http_match__path_match :
  ?case_sensitive:bool prop ->
  match_:match__http_match__path_match__match list ->
  unit ->
  match__http_match__path_match

type match__http_match

val match__http_match :
  ?method_:string prop ->
  ?header_matches:match__http_match__header_matches list ->
  ?path_match:match__http_match__path_match list ->
  unit ->
  match__http_match

type match_

val match_ : ?http_match:match__http_match list -> unit -> match_

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpclattice_listener_rule

val aws_vpclattice_listener_rule :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  listener_identifier:string prop ->
  name:string prop ->
  priority:float prop ->
  service_identifier:string prop ->
  action:action list ->
  match_:match_ list ->
  unit ->
  aws_vpclattice_listener_rule

val yojson_of_aws_vpclattice_listener_rule :
  aws_vpclattice_listener_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  listener_identifier : string prop;
  name : string prop;
  priority : float prop;
  rule_id : string prop;
  service_identifier : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  listener_identifier:string prop ->
  name:string prop ->
  priority:float prop ->
  service_identifier:string prop ->
  action:action list ->
  match_:match_ list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  listener_identifier:string prop ->
  name:string prop ->
  priority:float prop ->
  service_identifier:string prop ->
  action:action list ->
  match_:match_ list ->
  string ->
  t Tf_core.resource
