(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_network_acl__egress
type aws_default_network_acl__ingress
type aws_default_network_acl

val aws_default_network_acl :
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_network_acl_id:string prop ->
  egress:aws_default_network_acl__egress list ->
  ingress:aws_default_network_acl__ingress list ->
  string ->
  unit
