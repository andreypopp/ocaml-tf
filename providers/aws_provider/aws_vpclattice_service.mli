(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_service__timeouts

type aws_vpclattice_service__dns_entry = {
  domain_name : string;  (** domain_name *)
  hosted_zone_id : string;  (** hosted_zone_id *)
}

type aws_vpclattice_service

val aws_vpclattice_service :
  ?auth_type:string ->
  ?certificate_arn:string ->
  ?custom_domain_name:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_vpclattice_service__timeouts ->
  name:string ->
  string ->
  unit
