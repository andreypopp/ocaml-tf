(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type logging_configuration

val logging_configuration :
  ?include_execution_data:bool prop ->
  ?level:string prop ->
  ?log_destination:string prop ->
  unit ->
  logging_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type tracing_configuration

val tracing_configuration :
  ?enabled:bool prop -> unit -> tracing_configuration

type aws_sfn_state_machine

val aws_sfn_state_machine :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?publish:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  definition:string prop ->
  role_arn:string prop ->
  logging_configuration:logging_configuration list ->
  tracing_configuration:tracing_configuration list ->
  unit ->
  aws_sfn_state_machine

val yojson_of_aws_sfn_state_machine : aws_sfn_state_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_date : string prop;
  definition : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  publish : bool prop;
  revision_id : string prop;
  role_arn : string prop;
  state_machine_version_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  version_description : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?publish:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  definition:string prop ->
  role_arn:string prop ->
  logging_configuration:logging_configuration list ->
  tracing_configuration:tracing_configuration list ->
  string ->
  t
