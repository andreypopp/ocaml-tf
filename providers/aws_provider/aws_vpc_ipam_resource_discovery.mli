(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_resource_discovery__operating_regions
type aws_vpc_ipam_resource_discovery__timeouts
type aws_vpc_ipam_resource_discovery

val aws_vpc_ipam_resource_discovery :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_vpc_ipam_resource_discovery__timeouts ->
  operating_regions:
    aws_vpc_ipam_resource_discovery__operating_regions list ->
  string ->
  unit
