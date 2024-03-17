(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_default_network_acl__egress
type aws_default_network_acl__ingress
type aws_default_network_acl

type t = private {
  arn : string prop;
  default_network_acl_id : string prop;
  id : string prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

val aws_default_network_acl :
  ?id:string prop ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  default_network_acl_id:string prop ->
  egress:aws_default_network_acl__egress list ->
  ingress:aws_default_network_acl__ingress list ->
  string ->
  t
