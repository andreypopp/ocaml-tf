(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_security_group_rule__timeouts
type aws_security_group_rule

val aws_security_group_rule :
  ?cidr_blocks:string list ->
  ?description:string ->
  ?id:string ->
  ?ipv6_cidr_blocks:string list ->
  ?prefix_list_ids:string list ->
  ?self:bool ->
  ?source_security_group_id:string ->
  ?timeouts:aws_security_group_rule__timeouts ->
  from_port:float ->
  protocol:string ->
  security_group_id:string ->
  to_port:float ->
  type_:string ->
  string ->
  unit
