(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_security_group_rule__timeouts
type aws_security_group_rule

type t = private {
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

val aws_security_group_rule :
  ?cidr_blocks:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?ipv6_cidr_blocks:string prop list ->
  ?prefix_list_ids:string prop list ->
  ?self:bool prop ->
  ?source_security_group_id:string prop ->
  ?timeouts:aws_security_group_rule__timeouts ->
  from_port:float prop ->
  protocol:string prop ->
  security_group_id:string prop ->
  to_port:float prop ->
  type_:string prop ->
  string ->
  t
