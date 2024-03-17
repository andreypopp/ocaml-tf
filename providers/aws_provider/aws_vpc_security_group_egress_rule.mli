(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_security_group_egress_rule

type t = private {
  arn : string prop;
  cidr_ipv4 : string prop;
  cidr_ipv6 : string prop;
  description : string prop;
  from_port : float prop;
  id : string prop;
  ip_protocol : string prop;
  prefix_list_id : string prop;
  referenced_security_group_id : string prop;
  security_group_id : string prop;
  security_group_rule_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  to_port : float prop;
}

val aws_vpc_security_group_egress_rule :
  ?cidr_ipv4:string prop ->
  ?cidr_ipv6:string prop ->
  ?description:string prop ->
  ?from_port:float prop ->
  ?prefix_list_id:string prop ->
  ?referenced_security_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?to_port:float prop ->
  ip_protocol:string prop ->
  security_group_id:string prop ->
  string ->
  t
