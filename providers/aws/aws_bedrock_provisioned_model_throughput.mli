(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_bedrock_provisioned_model_throughput

val aws_bedrock_provisioned_model_throughput :
  ?commitment_duration:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  model_arn:string prop ->
  model_units:float prop ->
  provisioned_model_name:string prop ->
  unit ->
  aws_bedrock_provisioned_model_throughput

val yojson_of_aws_bedrock_provisioned_model_throughput :
  aws_bedrock_provisioned_model_throughput -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  commitment_duration : string prop;
  id : string prop;
  model_arn : string prop;
  model_units : float prop;
  provisioned_model_arn : string prop;
  provisioned_model_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?commitment_duration:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  model_arn:string prop ->
  model_units:float prop ->
  provisioned_model_name:string prop ->
  string ->
  t

val make :
  ?commitment_duration:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  model_arn:string prop ->
  model_units:float prop ->
  provisioned_model_name:string prop ->
  string ->
  t Tf_core.resource
