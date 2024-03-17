(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_bedrock_provisioned_model_throughput__timeouts
type aws_bedrock_provisioned_model_throughput

val aws_bedrock_provisioned_model_throughput :
  ?commitment_duration:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:aws_bedrock_provisioned_model_throughput__timeouts ->
  model_arn:string prop ->
  model_units:float prop ->
  provisioned_model_name:string prop ->
  string ->
  unit
