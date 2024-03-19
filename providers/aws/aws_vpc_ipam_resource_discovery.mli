(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type operating_regions

val operating_regions :
  region_name:string prop -> unit -> operating_regions

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpc_ipam_resource_discovery

val aws_vpc_ipam_resource_discovery :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  operating_regions:operating_regions list ->
  unit ->
  aws_vpc_ipam_resource_discovery

val yojson_of_aws_vpc_ipam_resource_discovery :
  aws_vpc_ipam_resource_discovery -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  operating_regions:operating_regions list ->
  string ->
  t
