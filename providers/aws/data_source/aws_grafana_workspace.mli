(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_grafana_workspace

val aws_grafana_workspace :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  workspace_id:string prop ->
  unit ->
  aws_grafana_workspace

val yojson_of_aws_grafana_workspace : aws_grafana_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_access_type : string prop;
  arn : string prop;
  authentication_providers : string list prop;
  created_date : string prop;
  data_sources : string list prop;
  description : string prop;
  endpoint : string prop;
  grafana_version : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  notification_destinations : string list prop;
  organization_role_name : string prop;
  organizational_units : string list prop;
  permission_type : string prop;
  role_arn : string prop;
  saml_configuration_status : string prop;
  stack_set_name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  workspace_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  workspace_id:string prop ->
  string ->
  t Tf_core.resource
