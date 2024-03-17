(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_service_network_vpc_association__timeouts
type aws_vpclattice_service_network_vpc_association

type t = private {
  arn : string prop;
  created_by : string prop;
  id : string prop;
  security_group_ids : string list prop;
  service_network_identifier : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_identifier : string prop;
}

val aws_vpclattice_service_network_vpc_association :
  ?id:string prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpclattice_service_network_vpc_association__timeouts ->
  service_network_identifier:string prop ->
  vpc_identifier:string prop ->
  string ->
  t
