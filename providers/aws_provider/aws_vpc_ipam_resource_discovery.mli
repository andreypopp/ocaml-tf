(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_resource_discovery__operating_regions
type aws_vpc_ipam_resource_discovery__timeouts
type aws_vpc_ipam_resource_discovery

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  ipam_resource_discovery_region : string prop;
  is_default : bool prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpc_ipam_resource_discovery :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_ipam_resource_discovery__timeouts ->
  operating_regions:
    aws_vpc_ipam_resource_discovery__operating_regions list ->
  string ->
  t
