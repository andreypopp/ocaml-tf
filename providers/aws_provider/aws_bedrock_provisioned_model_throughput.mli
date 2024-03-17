(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_bedrock_provisioned_model_throughput__timeouts
type aws_bedrock_provisioned_model_throughput

type t = private {
  commitment_duration : string prop;
  id : string prop;
  model_arn : string prop;
  model_units : float prop;
  provisioned_model_arn : string prop;
  provisioned_model_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_bedrock_provisioned_model_throughput :
  ?commitment_duration:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:aws_bedrock_provisioned_model_throughput__timeouts ->
  model_arn:string prop ->
  model_units:float prop ->
  provisioned_model_name:string prop ->
  string ->
  t
