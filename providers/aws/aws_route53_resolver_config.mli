(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_config

type t = private {
  autodefined_reverse_flag : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
}

val aws_route53_resolver_config :
  ?id:string prop ->
  autodefined_reverse_flag:string prop ->
  resource_id:string prop ->
  string ->
  t
