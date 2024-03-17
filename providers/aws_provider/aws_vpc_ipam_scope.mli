(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_scope__timeouts
type aws_vpc_ipam_scope

val aws_vpc_ipam_scope :
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_vpc_ipam_scope__timeouts ->
  ipam_id:string ->
  string ->
  unit
