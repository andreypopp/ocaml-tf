(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_service_network_vpc_association__timeouts
type aws_vpclattice_service_network_vpc_association

val aws_vpclattice_service_network_vpc_association :
  ?id:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpclattice_service_network_vpc_association__timeouts ->
  service_network_identifier:string prop ->
  vpc_identifier:string prop ->
  string ->
  unit
