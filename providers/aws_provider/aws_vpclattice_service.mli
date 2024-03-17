(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_service__timeouts

type aws_vpclattice_service__dns_entry = {
  domain_name : string prop;  (** domain_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}

type aws_vpclattice_service

val aws_vpclattice_service :
  ?auth_type:string prop ->
  ?certificate_arn:string prop ->
  ?custom_domain_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpclattice_service__timeouts ->
  name:string prop ->
  string ->
  unit
