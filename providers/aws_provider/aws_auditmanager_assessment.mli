(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_assessment__assessment_reports_destination
type aws_auditmanager_assessment__scope__aws_accounts
type aws_auditmanager_assessment__scope__aws_services
type aws_auditmanager_assessment__scope

type aws_auditmanager_assessment__roles = {
  role_arn : string;  (** role_arn *)
  role_type : string;  (** role_type *)
}
[@@deriving yojson_of]

type aws_auditmanager_assessment__roles_all = {
  role_arn : string;  (** role_arn *)
  role_type : string;  (** role_type *)
}
[@@deriving yojson_of]

type aws_auditmanager_assessment

val aws_auditmanager_assessment :
  ?description:string ->
  ?tags:(string * string) list ->
  framework_id:string ->
  name:string ->
  roles:aws_auditmanager_assessment__roles list ->
  assessment_reports_destination:
    aws_auditmanager_assessment__assessment_reports_destination list ->
  scope:aws_auditmanager_assessment__scope list ->
  string ->
  unit
