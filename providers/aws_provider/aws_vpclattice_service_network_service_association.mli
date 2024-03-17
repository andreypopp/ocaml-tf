(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_service_network_service_association__timeouts

type aws_vpclattice_service_network_service_association__dns_entry = {
  domain_name : string prop;  (** domain_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}

type aws_vpclattice_service_network_service_association

type t = private {
  arn : string prop;
  created_by : string prop;
  custom_domain_name : string prop;
  dns_entry :
    aws_vpclattice_service_network_service_association__dns_entry
    list
    prop;
  id : string prop;
  service_identifier : string prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpclattice_service_network_service_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:
    aws_vpclattice_service_network_service_association__timeouts ->
  service_identifier:string prop ->
  service_network_identifier:string prop ->
  string ->
  t
