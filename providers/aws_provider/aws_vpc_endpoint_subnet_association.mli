(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_subnet_association__timeouts
type aws_vpc_endpoint_subnet_association

val aws_vpc_endpoint_subnet_association :
  ?timeouts:aws_vpc_endpoint_subnet_association__timeouts ->
  subnet_id:string ->
  vpc_endpoint_id:string ->
  string ->
  unit
