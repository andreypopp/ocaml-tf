(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam__operating_regions
type aws_vpc_ipam__timeouts
type aws_vpc_ipam

val aws_vpc_ipam :
  ?cascade:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_ipam__timeouts ->
  operating_regions:aws_vpc_ipam__operating_regions list ->
  string ->
  unit
