(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type input_data_config

val input_data_config :
  ?tuning_data_s3_uri:string prop ->
  data_access_role_arn:string prop ->
  s3_uri:string prop ->
  unit ->
  input_data_config

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_transcribe_language_model

val aws_transcribe_language_model :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  base_model_name:string prop ->
  language_code:string prop ->
  model_name:string prop ->
  input_data_config:input_data_config list ->
  unit ->
  aws_transcribe_language_model

val yojson_of_aws_transcribe_language_model :
  aws_transcribe_language_model -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  base_model_name : string prop;
  id : string prop;
  language_code : string prop;
  model_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  base_model_name:string prop ->
  language_code:string prop ->
  model_name:string prop ->
  input_data_config:input_data_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  base_model_name:string prop ->
  language_code:string prop ->
  model_name:string prop ->
  input_data_config:input_data_config list ->
  string ->
  t Tf_core.resource
