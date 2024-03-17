(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam__operating_regions
type aws_vpc_ipam__timeouts
type aws_vpc_ipam

val aws_vpc_ipam :
  ?cascade:bool ->
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_vpc_ipam__timeouts ->
  operating_regions:aws_vpc_ipam__operating_regions list ->
  string ->
  unit
