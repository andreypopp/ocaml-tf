(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type csv_classifier

val csv_classifier :
  ?allow_single_column:bool prop ->
  ?contains_header:string prop ->
  ?custom_datatype_configured:bool prop ->
  ?custom_datatypes:string prop list ->
  ?delimiter:string prop ->
  ?disable_value_trimming:bool prop ->
  ?header:string prop list ->
  ?quote_symbol:string prop ->
  ?serde:string prop ->
  unit ->
  csv_classifier

type grok_classifier

val grok_classifier :
  ?custom_patterns:string prop ->
  classification:string prop ->
  grok_pattern:string prop ->
  unit ->
  grok_classifier

type json_classifier

val json_classifier :
  json_path:string prop -> unit -> json_classifier

type xml_classifier

val xml_classifier :
  classification:string prop ->
  row_tag:string prop ->
  unit ->
  xml_classifier

type aws_glue_classifier

val aws_glue_classifier :
  ?id:string prop ->
  ?csv_classifier:csv_classifier list ->
  ?grok_classifier:grok_classifier list ->
  ?json_classifier:json_classifier list ->
  ?xml_classifier:xml_classifier list ->
  name:string prop ->
  unit ->
  aws_glue_classifier

val yojson_of_aws_glue_classifier : aws_glue_classifier -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?csv_classifier:csv_classifier list ->
  ?grok_classifier:grok_classifier list ->
  ?json_classifier:json_classifier list ->
  ?xml_classifier:xml_classifier list ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?csv_classifier:csv_classifier list ->
  ?grok_classifier:grok_classifier list ->
  ?json_classifier:json_classifier list ->
  ?xml_classifier:xml_classifier list ->
  name:string prop ->
  string ->
  t Tf_core.resource
