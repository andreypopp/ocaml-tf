(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_securityhub_standards_control

val aws_securityhub_standards_control :
  ?disabled_reason:string prop ->
  ?id:string prop ->
  control_status:string prop ->
  standards_control_arn:string prop ->
  unit ->
  aws_securityhub_standards_control

val yojson_of_aws_securityhub_standards_control :
  aws_securityhub_standards_control -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  control_id : string prop;
  control_status : string prop;
  control_status_updated_at : string prop;
  description : string prop;
  disabled_reason : string prop;
  id : string prop;
  related_requirements : string list prop;
  remediation_url : string prop;
  severity_rating : string prop;
  standards_control_arn : string prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disabled_reason:string prop ->
  ?id:string prop ->
  control_status:string prop ->
  standards_control_arn:string prop ->
  string ->
  t

val make :
  ?disabled_reason:string prop ->
  ?id:string prop ->
  control_status:string prop ->
  standards_control_arn:string prop ->
  string ->
  t Tf_core.resource
