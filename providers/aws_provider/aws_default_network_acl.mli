(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_network_acl__egress
type aws_default_network_acl__ingress
type aws_default_network_acl

val aws_default_network_acl :
  ?id:string ->
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  default_network_acl_id:string ->
  egress:aws_default_network_acl__egress list ->
  ingress:aws_default_network_acl__ingress list ->
  string ->
  unit
