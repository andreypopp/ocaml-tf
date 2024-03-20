(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type model_summaries = {
  creation_time : string prop;  (** creation_time *)
  model_arn : string prop;  (** model_arn *)
  model_name : string prop;  (** model_name *)
}

type aws_bedrock_custom_models

val aws_bedrock_custom_models : unit -> aws_bedrock_custom_models

val yojson_of_aws_bedrock_custom_models :
  aws_bedrock_custom_models -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  model_summaries : model_summaries list prop;
}

val register : ?tf_module:tf_module -> string -> t
val make : string -> t Tf_core.resource
