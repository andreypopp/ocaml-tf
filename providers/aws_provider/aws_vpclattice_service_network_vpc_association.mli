(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_service_network_vpc_association__timeouts
type aws_vpclattice_service_network_vpc_association

val aws_vpclattice_service_network_vpc_association :
  ?security_group_ids:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_vpclattice_service_network_vpc_association__timeouts ->
  service_network_identifier:string ->
  vpc_identifier:string ->
  string ->
  unit
