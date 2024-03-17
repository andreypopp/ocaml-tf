(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_service__timeouts

type aws_vpclattice_service__dns_entry = {
  domain_name : string;  (** domain_name *)
  hosted_zone_id : string;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpclattice_service

val aws_vpclattice_service :
  ?certificate_arn:string ->
  ?custom_domain_name:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_vpclattice_service__timeouts ->
  name:string ->
  string ->
  unit
