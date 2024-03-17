(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_subnet_association__timeouts
type aws_vpc_endpoint_subnet_association

val aws_vpc_endpoint_subnet_association :
  ?id:string prop ->
  ?timeouts:aws_vpc_endpoint_subnet_association__timeouts ->
  subnet_id:string prop ->
  vpc_endpoint_id:string prop ->
  string ->
  unit
