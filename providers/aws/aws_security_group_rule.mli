(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_security_group_rule

val aws_security_group_rule :
  ?cidr_blocks:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?ipv6_cidr_blocks:string prop list ->
  ?prefix_list_ids:string prop list ->
  ?self:bool prop ->
  ?source_security_group_id:string prop ->
  ?timeouts:timeouts ->
  from_port:float prop ->
  protocol:string prop ->
  security_group_id:string prop ->
  to_port:float prop ->
  type_:string prop ->
  unit ->
  aws_security_group_rule

val yojson_of_aws_security_group_rule :
  aws_security_group_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cidr_blocks : string list prop;
  description : string prop;
  from_port : float prop;
  id : string prop;
  ipv6_cidr_blocks : string list prop;
  prefix_list_ids : string list prop;
  protocol : string prop;
  security_group_id : string prop;
  security_group_rule_id : string prop;
  self : bool prop;
  source_security_group_id : string prop;
  to_port : float prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cidr_blocks:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?ipv6_cidr_blocks:string prop list ->
  ?prefix_list_ids:string prop list ->
  ?self:bool prop ->
  ?source_security_group_id:string prop ->
  ?timeouts:timeouts ->
  from_port:float prop ->
  protocol:string prop ->
  security_group_id:string prop ->
  to_port:float prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?cidr_blocks:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?ipv6_cidr_blocks:string prop list ->
  ?prefix_list_ids:string prop list ->
  ?self:bool prop ->
  ?source_security_group_id:string prop ->
  ?timeouts:timeouts ->
  from_port:float prop ->
  protocol:string prop ->
  security_group_id:string prop ->
  to_port:float prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
