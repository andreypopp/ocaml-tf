(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type monitor

val monitor :
  ?alarm_role_arn:string prop ->
  alarm_arn:string prop ->
  unit ->
  monitor

type aws_appconfig_environment

val aws_appconfig_environment :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  name:string prop ->
  monitor:monitor list ->
  unit ->
  aws_appconfig_environment

val yojson_of_aws_appconfig_environment :
  aws_appconfig_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  name:string prop ->
  monitor:monitor list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  application_id:string prop ->
  name:string prop ->
  monitor:monitor list ->
  string ->
  t Tf_core.resource
