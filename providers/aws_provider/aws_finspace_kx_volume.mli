(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_volume__nas1_configuration
type aws_finspace_kx_volume__timeouts

type aws_finspace_kx_volume__attached_clusters = {
  cluster_name : string;  (** cluster_name *)
  cluster_status : string;  (** cluster_status *)
  cluster_type : string;  (** cluster_type *)
}

type aws_finspace_kx_volume

val aws_finspace_kx_volume :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_finspace_kx_volume__timeouts ->
  availability_zones:string list ->
  az_mode:string ->
  environment_id:string ->
  name:string ->
  type_:string ->
  nas1_configuration:aws_finspace_kx_volume__nas1_configuration list ->
  string ->
  unit
