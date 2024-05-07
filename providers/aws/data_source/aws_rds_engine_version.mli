(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_rds_engine_version

val aws_rds_engine_version :
  ?default_only:bool prop ->
  ?has_major_target:bool prop ->
  ?has_minor_target:bool prop ->
  ?id:string prop ->
  ?include_all:bool prop ->
  ?latest:bool prop ->
  ?parameter_group_family:string prop ->
  ?preferred_major_targets:string prop list ->
  ?preferred_upgrade_targets:string prop list ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  engine:string prop ->
  filter:filter list ->
  unit ->
  aws_rds_engine_version

val yojson_of_aws_rds_engine_version : aws_rds_engine_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  default_character_set : string prop;
  default_only : bool prop;
  engine : string prop;
  engine_description : string prop;
  exportable_log_types : string list prop;
  has_major_target : bool prop;
  has_minor_target : bool prop;
  id : string prop;
  include_all : bool prop;
  latest : bool prop;
  parameter_group_family : string prop;
  preferred_major_targets : string list prop;
  preferred_upgrade_targets : string list prop;
  preferred_versions : string list prop;
  status : string prop;
  supported_character_sets : string list prop;
  supported_feature_names : string list prop;
  supported_modes : string list prop;
  supported_timezones : string list prop;
  supports_global_databases : bool prop;
  supports_log_exports_to_cloudwatch : bool prop;
  supports_parallel_query : bool prop;
  supports_read_replica : bool prop;
  valid_major_targets : string list prop;
  valid_minor_targets : string list prop;
  valid_upgrade_targets : string list prop;
  version : string prop;
  version_actual : string prop;
  version_description : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_only:bool prop ->
  ?has_major_target:bool prop ->
  ?has_minor_target:bool prop ->
  ?id:string prop ->
  ?include_all:bool prop ->
  ?latest:bool prop ->
  ?parameter_group_family:string prop ->
  ?preferred_major_targets:string prop list ->
  ?preferred_upgrade_targets:string prop list ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  engine:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?default_only:bool prop ->
  ?has_major_target:bool prop ->
  ?has_minor_target:bool prop ->
  ?id:string prop ->
  ?include_all:bool prop ->
  ?latest:bool prop ->
  ?parameter_group_family:string prop ->
  ?preferred_major_targets:string prop list ->
  ?preferred_upgrade_targets:string prop list ->
  ?preferred_versions:string prop list ->
  ?version:string prop ->
  engine:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
