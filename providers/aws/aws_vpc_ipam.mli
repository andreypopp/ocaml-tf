(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_vpc_ipam

val aws_vpc_ipam :
  ?cascade:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tier:string prop ->
  ?timeouts:timeouts ->
  operating_regions:operating_regions list ->
  unit ->
  aws_vpc_ipam

val yojson_of_aws_vpc_ipam : aws_vpc_ipam -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cascade : bool prop;
  default_resource_discovery_association_id : string prop;
  default_resource_discovery_id : string prop;
  description : string prop;
  id : string prop;
  private_default_scope_id : string prop;
  public_default_scope_id : string prop;
  scope_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cascade:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tier:string prop ->
  ?timeouts:timeouts ->
  operating_regions:operating_regions list ->
  string ->
  t

val make :
  ?cascade:bool prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tier:string prop ->
  ?timeouts:timeouts ->
  operating_regions:operating_regions list ->
  string ->
  t Tf_core.resource
