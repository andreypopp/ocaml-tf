(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ebs_config

val ebs_config :
  ?iops:float prop ->
  ?volumes_per_instance:float prop ->
  size:float prop ->
  type_:string prop ->
  unit ->
  ebs_config

type aws_emr_instance_group

val aws_emr_instance_group :
  ?autoscaling_policy:string prop ->
  ?bid_price:string prop ->
  ?configurations_json:string prop ->
  ?ebs_optimized:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?name:string prop ->
  cluster_id:string prop ->
  instance_type:string prop ->
  ebs_config:ebs_config list ->
  unit ->
  aws_emr_instance_group

val yojson_of_aws_emr_instance_group : aws_emr_instance_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  autoscaling_policy : string prop;
  bid_price : string prop;
  cluster_id : string prop;
  configurations_json : string prop;
  ebs_optimized : bool prop;
  id : string prop;
  instance_count : float prop;
  instance_type : string prop;
  name : string prop;
  running_instance_count : float prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?autoscaling_policy:string prop ->
  ?bid_price:string prop ->
  ?configurations_json:string prop ->
  ?ebs_optimized:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?name:string prop ->
  cluster_id:string prop ->
  instance_type:string prop ->
  ebs_config:ebs_config list ->
  string ->
  t

val make :
  ?autoscaling_policy:string prop ->
  ?bid_price:string prop ->
  ?configurations_json:string prop ->
  ?ebs_optimized:bool prop ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?name:string prop ->
  cluster_id:string prop ->
  instance_type:string prop ->
  ebs_config:ebs_config list ->
  string ->
  t Tf_core.resource
