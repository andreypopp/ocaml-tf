(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_volume__nas1_configuration
type aws_finspace_kx_volume__timeouts

type aws_finspace_kx_volume__attached_clusters = {
  cluster_name : string prop;  (** cluster_name *)
  cluster_status : string prop;  (** cluster_status *)
  cluster_type : string prop;  (** cluster_type *)
}

type aws_finspace_kx_volume

type t = private {
  arn : string prop;
  attached_clusters :
    aws_finspace_kx_volume__attached_clusters list prop;
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

val aws_finspace_kx_volume :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_finspace_kx_volume__timeouts ->
  availability_zones:string prop list ->
  az_mode:string prop ->
  environment_id:string prop ->
  name:string prop ->
  type_:string prop ->
  nas1_configuration:aws_finspace_kx_volume__nas1_configuration list ->
  string ->
  t
