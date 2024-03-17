(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dax_cluster__server_side_encryption
type aws_dax_cluster__timeouts

type aws_dax_cluster__nodes = {
  address : string prop;  (** address *)
  availability_zone : string prop;  (** availability_zone *)
  id : string prop;  (** id *)
  port : float prop;  (** port *)
}

type aws_dax_cluster

type t = private {
  arn : string prop;
  availability_zones : string list prop;
  cluster_address : string prop;
  cluster_endpoint_encryption_type : string prop;
  cluster_name : string prop;
  configuration_endpoint : string prop;
  description : string prop;
  iam_role_arn : string prop;
  id : string prop;
  maintenance_window : string prop;
  node_type : string prop;
  nodes : aws_dax_cluster__nodes list prop;
  notification_topic_arn : string prop;
  parameter_group_name : string prop;
  port : float prop;
  replication_factor : float prop;
  security_group_ids : string list prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_dax_cluster :
  ?availability_zones:string prop list ->
  ?cluster_endpoint_encryption_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?maintenance_window:string prop ->
  ?notification_topic_arn:string prop ->
  ?parameter_group_name:string prop ->
  ?security_group_ids:string prop list ->
  ?subnet_group_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_dax_cluster__timeouts ->
  cluster_name:string prop ->
  iam_role_arn:string prop ->
  node_type:string prop ->
  replication_factor:float prop ->
  server_side_encryption:aws_dax_cluster__server_side_encryption list ->
  string ->
  t
