(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_service_network_service_association__timeouts

type aws_vpclattice_service_network_service_association__dns_entry = {
  domain_name : string;  (** domain_name *)
  hosted_zone_id : string;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpclattice_service_network_service_association

val aws_vpclattice_service_network_service_association :
  ?tags:(string * string) list ->
  ?timeouts:
    aws_vpclattice_service_network_service_association__timeouts ->
  service_identifier:string ->
  service_network_identifier:string ->
  string ->
  unit
