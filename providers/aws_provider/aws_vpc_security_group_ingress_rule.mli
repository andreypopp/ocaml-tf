(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_security_group_ingress_rule

val aws_vpc_security_group_ingress_rule :
  ?cidr_ipv4:string ->
  ?cidr_ipv6:string ->
  ?description:string ->
  ?from_port:float ->
  ?prefix_list_id:string ->
  ?referenced_security_group_id:string ->
  ?tags:(string * string) list ->
  ?to_port:float ->
  ip_protocol:string ->
  security_group_id:string ->
  string ->
  unit
