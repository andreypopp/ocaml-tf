(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_route53_resolver_dnssec_config

type t = private {
  arn : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
  validation_status : string prop;
}

val aws_route53_resolver_dnssec_config :
  ?id:string prop -> resource_id:string prop -> string -> t
