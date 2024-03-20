(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_neptune_engine_version

val aws_neptune_engine_version :
  ?engine:string prop ->
  ?id:string prop ->
  ?parameter_group_family:string prop ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  unit ->
  aws_neptune_engine_version

val yojson_of_aws_neptune_engine_version :
  aws_neptune_engine_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  engine : string prop;
  engine_description : string prop;
  exportable_log_types : string list prop;
  id : string prop;
  parameter_group_family : string prop;
  preferred_versions : string list prop;
  supported_timezones : string list prop;
  supports_log_exports_to_cloudwatch : bool prop;
  supports_read_replica : bool prop;
  valid_upgrade_targets : string list prop;
  version : string prop;
  version_description : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?engine:string prop ->
  ?id:string prop ->
  ?parameter_group_family:string prop ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  string ->
  t

val make :
  ?engine:string prop ->
  ?id:string prop ->
  ?parameter_group_family:string prop ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  string ->
  t Tf_core.resource
