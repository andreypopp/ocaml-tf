(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_resource_discovery_association__timeouts
type aws_vpc_ipam_resource_discovery_association

val aws_vpc_ipam_resource_discovery_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_ipam_resource_discovery_association__timeouts ->
  ipam_id:string prop ->
  ipam_resource_discovery_id:string prop ->
  string ->
  unit
