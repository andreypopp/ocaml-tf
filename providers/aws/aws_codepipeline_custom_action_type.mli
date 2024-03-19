(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type configuration_property

val configuration_property :
  ?description:string prop ->
  ?queryable:bool prop ->
  ?type_:string prop ->
  key:bool prop ->
  name:string prop ->
  required:bool prop ->
  secret:bool prop ->
  unit ->
  configuration_property

type input_artifact_details

val input_artifact_details :
  maximum_count:float prop ->
  minimum_count:float prop ->
  unit ->
  input_artifact_details

type output_artifact_details

val output_artifact_details :
  maximum_count:float prop ->
  minimum_count:float prop ->
  unit ->
  output_artifact_details

type settings

val settings :
  ?entity_url_template:string prop ->
  ?execution_url_template:string prop ->
  ?revision_url_template:string prop ->
  ?third_party_configuration_url:string prop ->
  unit ->
  settings

type aws_codepipeline_custom_action_type

val aws_codepipeline_custom_action_type :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  category:string prop ->
  provider_name:string prop ->
  version:string prop ->
  configuration_property:configuration_property list ->
  input_artifact_details:input_artifact_details list ->
  output_artifact_details:output_artifact_details list ->
  settings:settings list ->
  unit ->
  aws_codepipeline_custom_action_type

val yojson_of_aws_codepipeline_custom_action_type :
  aws_codepipeline_custom_action_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  category : string prop;
  id : string prop;
  owner : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  category:string prop ->
  provider_name:string prop ->
  version:string prop ->
  configuration_property:configuration_property list ->
  input_artifact_details:input_artifact_details list ->
  output_artifact_details:output_artifact_details list ->
  settings:settings list ->
  string ->
  t
