(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_nat_gateway__timeouts
type aws_nat_gateway

val aws_nat_gateway :
  ?allocation_id:string ->
  ?connectivity_type:string ->
  ?id:string ->
  ?private_ip:string ->
  ?secondary_allocation_ids:string list ->
  ?secondary_private_ip_address_count:float ->
  ?secondary_private_ip_addresses:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_nat_gateway__timeouts ->
  subnet_id:string ->
  string ->
  unit
