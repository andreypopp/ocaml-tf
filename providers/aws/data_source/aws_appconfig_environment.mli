(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type monitor = {
  alarm_arn : string prop;  (** alarm_arn *)
  alarm_role_arn : string prop;  (** alarm_role_arn *)
}

type aws_appconfig_environment

val aws_appconfig_environment :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  environment_id:string prop ->
  unit ->
  aws_appconfig_environment

val yojson_of_aws_appconfig_environment :
  aws_appconfig_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  arn : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  monitor : monitor list prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  environment_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  environment_id:string prop ->
  string ->
  t Tf_core.resource
