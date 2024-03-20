(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type model_summaries = {
  customizations_supported : string prop list;
      (** customizations_supported *)
  inference_types_supported : string prop list;
      (** inference_types_supported *)
  input_modalities : string prop list;  (** input_modalities *)
  model_arn : string prop;  (** model_arn *)
  model_id : string prop;  (** model_id *)
  model_name : string prop;  (** model_name *)
  output_modalities : string prop list;  (** output_modalities *)
  provider_name : string prop;  (** provider_name *)
  response_streaming_supported : bool prop;
      (** response_streaming_supported *)
}

type aws_bedrock_foundation_models

val aws_bedrock_foundation_models :
  ?by_customization_type:string prop ->
  ?by_inference_type:string prop ->
  ?by_output_modality:string prop ->
  ?by_provider:string prop ->
  unit ->
  aws_bedrock_foundation_models

val yojson_of_aws_bedrock_foundation_models :
  aws_bedrock_foundation_models -> json

(** RESOURCE REGISTRATION *)

type t = private {
  by_customization_type : string prop;
  by_inference_type : string prop;
  by_output_modality : string prop;
  by_provider : string prop;
  id : string prop;
  model_summaries : model_summaries list prop;
}

val register :
  ?tf_module:tf_module ->
  ?by_customization_type:string prop ->
  ?by_inference_type:string prop ->
  ?by_output_modality:string prop ->
  ?by_provider:string prop ->
  string ->
  t

val make :
  ?by_customization_type:string prop ->
  ?by_inference_type:string prop ->
  ?by_output_modality:string prop ->
  ?by_provider:string prop ->
  string ->
  t Tf_core.resource
