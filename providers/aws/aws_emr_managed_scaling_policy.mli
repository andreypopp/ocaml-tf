(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type compute_limits

val compute_limits :
  ?maximum_core_capacity_units:float prop ->
  ?maximum_ondemand_capacity_units:float prop ->
  maximum_capacity_units:float prop ->
  minimum_capacity_units:float prop ->
  unit_type:string prop ->
  unit ->
  compute_limits

type aws_emr_managed_scaling_policy

val aws_emr_managed_scaling_policy :
  ?id:string prop ->
  cluster_id:string prop ->
  compute_limits:compute_limits list ->
  unit ->
  aws_emr_managed_scaling_policy

val yojson_of_aws_emr_managed_scaling_policy :
  aws_emr_managed_scaling_policy -> json

(** RESOURCE REGISTRATION *)

type t = private { cluster_id : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_id:string prop ->
  compute_limits:compute_limits list ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_id:string prop ->
  compute_limits:compute_limits list ->
  string ->
  t Tf_core.resource
