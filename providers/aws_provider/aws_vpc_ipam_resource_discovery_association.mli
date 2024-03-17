(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_resource_discovery_association__timeouts
type aws_vpc_ipam_resource_discovery_association

val aws_vpc_ipam_resource_discovery_association :
  ?tags:(string * string) list ->
  ?timeouts:aws_vpc_ipam_resource_discovery_association__timeouts ->
  ipam_id:string ->
  ipam_resource_discovery_id:string ->
  string ->
  unit
