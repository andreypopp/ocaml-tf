(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_bedrock_foundation_model

val aws_bedrock_foundation_model :
  model_id:string prop -> unit -> aws_bedrock_foundation_model

val yojson_of_aws_bedrock_foundation_model :
  aws_bedrock_foundation_model -> json

(** RESOURCE REGISTRATION *)

type t = private {
  customizations_supported : string list prop;
  id : string prop;
  inference_types_supported : string list prop;
  input_modalities : string list prop;
  model_arn : string prop;
  model_id : string prop;
  model_name : string prop;
  output_modalities : string list prop;
  provider_name : string prop;
  response_streaming_supported : bool prop;
}

val register :
  ?tf_module:tf_module -> model_id:string prop -> string -> t

val make : model_id:string prop -> string -> t Tf_core.resource
