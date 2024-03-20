(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type nodes = {
  address : string prop;  (** address *)
  availability_zone : string prop;  (** availability_zone *)
  id : string prop;  (** id *)
  port : float prop;  (** port *)
}

type server_side_encryption

val server_side_encryption :
  ?enabled:bool prop -> unit -> server_side_encryption

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_dax_cluster

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
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  iam_role_arn:string prop ->
  node_type:string prop ->
  replication_factor:float prop ->
  server_side_encryption:server_side_encryption list ->
  unit ->
  aws_dax_cluster

val yojson_of_aws_dax_cluster : aws_dax_cluster -> json

(** RESOURCE REGISTRATION *)

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
  nodes : nodes list prop;
  notification_topic_arn : string prop;
  parameter_group_name : string prop;
  port : float prop;
  replication_factor : float prop;
  security_group_ids : string list prop;
  subnet_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  iam_role_arn:string prop ->
  node_type:string prop ->
  replication_factor:float prop ->
  server_side_encryption:server_side_encryption list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  iam_role_arn:string prop ->
  node_type:string prop ->
  replication_factor:float prop ->
  server_side_encryption:server_side_encryption list ->
  string ->
  t Tf_core.resource
