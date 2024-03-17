(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_ipam_resource_discovery_association__timeouts
type aws_vpc_ipam_resource_discovery_association

type t = private {
  arn : string prop;
  id : string prop;
  ipam_arn : string prop;
  ipam_id : string prop;
  ipam_region : string prop;
  ipam_resource_discovery_id : string prop;
  is_default : bool prop;
  owner_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpc_ipam_resource_discovery_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_vpc_ipam_resource_discovery_association__timeouts ->
  ipam_id:string prop ->
  ipam_resource_discovery_id:string prop ->
  string ->
  t
