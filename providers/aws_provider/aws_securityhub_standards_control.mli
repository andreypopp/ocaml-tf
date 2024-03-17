(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_standards_control

type t = private {
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

val aws_securityhub_standards_control :
  ?disabled_reason:string prop ->
  ?id:string prop ->
  control_status:string prop ->
  standards_control_arn:string prop ->
  string ->
  t
