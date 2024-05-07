(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_vpc_ipam_resource_discovery_association

val aws_vpc_ipam_resource_discovery_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  ipam_id:string prop ->
  ipam_resource_discovery_id:string prop ->
  unit ->
  aws_vpc_ipam_resource_discovery_association

val yojson_of_aws_vpc_ipam_resource_discovery_association :
  aws_vpc_ipam_resource_discovery_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  ipam_id:string prop ->
  ipam_resource_discovery_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  ipam_id:string prop ->
  ipam_resource_discovery_id:string prop ->
  string ->
  t Tf_core.resource
