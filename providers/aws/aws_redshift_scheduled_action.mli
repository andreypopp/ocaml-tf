(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target_action__pause_cluster

val target_action__pause_cluster :
  cluster_identifier:string prop ->
  unit ->
  target_action__pause_cluster

type target_action__resize_cluster

val target_action__resize_cluster :
  ?classic:bool prop ->
  ?cluster_type:string prop ->
  ?node_type:string prop ->
  ?number_of_nodes:float prop ->
  cluster_identifier:string prop ->
  unit ->
  target_action__resize_cluster

type target_action__resume_cluster

val target_action__resume_cluster :
  cluster_identifier:string prop ->
  unit ->
  target_action__resume_cluster

type target_action

val target_action :
  pause_cluster:target_action__pause_cluster list ->
  resize_cluster:target_action__resize_cluster list ->
  resume_cluster:target_action__resume_cluster list ->
  unit ->
  target_action

type aws_redshift_scheduled_action

val aws_redshift_scheduled_action :
  ?description:string prop ->
  ?enable:bool prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?start_time:string prop ->
  iam_role:string prop ->
  name:string prop ->
  schedule:string prop ->
  target_action:target_action list ->
  unit ->
  aws_redshift_scheduled_action

val yojson_of_aws_redshift_scheduled_action :
  aws_redshift_scheduled_action -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  enable : bool prop;
  end_time : string prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  start_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enable:bool prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?start_time:string prop ->
  iam_role:string prop ->
  name:string prop ->
  schedule:string prop ->
  target_action:target_action list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enable:bool prop ->
  ?end_time:string prop ->
  ?id:string prop ->
  ?start_time:string prop ->
  iam_role:string prop ->
  name:string prop ->
  schedule:string prop ->
  target_action:target_action list ->
  string ->
  t Tf_core.resource
