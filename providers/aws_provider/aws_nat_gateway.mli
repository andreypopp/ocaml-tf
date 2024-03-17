(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_nat_gateway__timeouts
type aws_nat_gateway

val aws_nat_gateway :
  ?allocation_id:string ->
  ?connectivity_type:string ->
  ?secondary_allocation_ids:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_nat_gateway__timeouts ->
  subnet_id:string ->
  string ->
  unit
