(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpc_security_group_egress_rule

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
  unit ->
  aws_vpc_security_group_egress_rule

val yojson_of_aws_vpc_security_group_egress_rule :
  aws_vpc_security_group_egress_rule -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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

val make :
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
  t Tf_core.resource
