(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__engine_version

val configuration__engine_version :
  ?selected_engine_version:string prop ->
  unit ->
  configuration__engine_version

type configuration__result_configuration__acl_configuration

val configuration__result_configuration__acl_configuration :
  s3_acl_option:string prop ->
  unit ->
  configuration__result_configuration__acl_configuration

type configuration__result_configuration__encryption_configuration

val configuration__result_configuration__encryption_configuration :
  ?encryption_option:string prop ->
  ?kms_key_arn:string prop ->
  unit ->
  configuration__result_configuration__encryption_configuration

type configuration__result_configuration

val configuration__result_configuration :
  ?expected_bucket_owner:string prop ->
  ?output_location:string prop ->
  ?acl_configuration:
    configuration__result_configuration__acl_configuration list ->
  ?encryption_configuration:
    configuration__result_configuration__encryption_configuration
    list ->
  unit ->
  configuration__result_configuration

type configuration

val configuration :
  ?bytes_scanned_cutoff_per_query:float prop ->
  ?enforce_workgroup_configuration:bool prop ->
  ?execution_role:string prop ->
  ?publish_cloudwatch_metrics_enabled:bool prop ->
  ?requester_pays_enabled:bool prop ->
  ?engine_version:configuration__engine_version list ->
  ?result_configuration:configuration__result_configuration list ->
  unit ->
  configuration

type aws_athena_workgroup

val aws_athena_workgroup :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?configuration:configuration list ->
  name:string prop ->
  unit ->
  aws_athena_workgroup

val yojson_of_aws_athena_workgroup : aws_athena_workgroup -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?configuration:configuration list ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?state:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?configuration:configuration list ->
  name:string prop ->
  string ->
  t Tf_core.resource
