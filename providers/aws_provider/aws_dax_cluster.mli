(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dax_cluster__server_side_encryption
type aws_dax_cluster__timeouts

type aws_dax_cluster__nodes = {
  address : string;  (** address *)
  availability_zone : string;  (** availability_zone *)
  id : string;  (** id *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type aws_dax_cluster

val aws_dax_cluster :
  ?availability_zones:string list ->
  ?cluster_endpoint_encryption_type:string ->
  ?description:string ->
  ?notification_topic_arn:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_dax_cluster__timeouts ->
  cluster_name:string ->
  iam_role_arn:string ->
  node_type:string ->
  replication_factor:float ->
  server_side_encryption:aws_dax_cluster__server_side_encryption list ->
  string ->
  unit
