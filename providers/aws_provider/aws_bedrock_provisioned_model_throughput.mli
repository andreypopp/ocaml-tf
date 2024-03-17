(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_bedrock_provisioned_model_throughput__timeouts
type aws_bedrock_provisioned_model_throughput

val aws_bedrock_provisioned_model_throughput :
  ?commitment_duration:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_bedrock_provisioned_model_throughput__timeouts ->
  model_arn:string ->
  model_units:float ->
  provisioned_model_name:string ->
  string ->
  unit
