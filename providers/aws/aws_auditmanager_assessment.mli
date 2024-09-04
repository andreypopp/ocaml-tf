(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type roles = {
  role_arn : string prop;  (** role_arn *)
  role_type : string prop;  (** role_type *)
}

type roles_all = {
  role_arn : string prop;  (** role_arn *)
  role_type : string prop;  (** role_type *)
}

type assessment_reports_destination

val assessment_reports_destination :
  destination:string prop ->
  destination_type:string prop ->
  unit ->
  assessment_reports_destination

type scope__aws_accounts

val scope__aws_accounts :
  id:string prop -> unit -> scope__aws_accounts

type scope__aws_services

val scope__aws_services :
  service_name:string prop -> unit -> scope__aws_services

type scope

val scope :
  aws_accounts:scope__aws_accounts list ->
  aws_services:scope__aws_services list ->
  unit ->
  scope

type aws_auditmanager_assessment

val aws_auditmanager_assessment :
  ?description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?assessment_reports_destination:assessment_reports_destination list ->
  ?scope:scope list ->
  framework_id:string prop ->
  name:string prop ->
  roles:roles list ->
  unit ->
  aws_auditmanager_assessment

val yojson_of_aws_auditmanager_assessment :
  aws_auditmanager_assessment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  framework_id : string prop;
  id : string prop;
  name : string prop;
  roles : roles list prop;
  roles_all : roles_all list prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?assessment_reports_destination:assessment_reports_destination list ->
  ?scope:scope list ->
  framework_id:string prop ->
  name:string prop ->
  roles:roles list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?assessment_reports_destination:assessment_reports_destination list ->
  ?scope:scope list ->
  framework_id:string prop ->
  name:string prop ->
  roles:roles list ->
  string ->
  t Tf_core.resource
