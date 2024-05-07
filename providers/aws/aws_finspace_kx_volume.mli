(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attached_clusters = {
  cluster_name : string prop;  (** cluster_name *)
  cluster_status : string prop;  (** cluster_status *)
  cluster_type : string prop;  (** cluster_type *)
}

type nas1_configuration

val nas1_configuration :
  size:float prop -> type_:string prop -> unit -> nas1_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_finspace_kx_volume

val aws_finspace_kx_volume :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?nas1_configuration:nas1_configuration list ->
  ?timeouts:timeouts ->
  availability_zones:string prop list ->
  az_mode:string prop ->
  environment_id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  aws_finspace_kx_volume

val yojson_of_aws_finspace_kx_volume : aws_finspace_kx_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  attached_clusters : attached_clusters list prop;
  availability_zones : string list prop;
  az_mode : string prop;
  created_timestamp : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?nas1_configuration:nas1_configuration list ->
  ?timeouts:timeouts ->
  availability_zones:string prop list ->
  az_mode:string prop ->
  environment_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?nas1_configuration:nas1_configuration list ->
  ?timeouts:timeouts ->
  availability_zones:string prop list ->
  az_mode:string prop ->
  environment_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
