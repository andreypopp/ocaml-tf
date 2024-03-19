(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_auditmanager_assessment_delegation

val aws_auditmanager_assessment_delegation :
  ?comment:string prop ->
  assessment_id:string prop ->
  control_set_id:string prop ->
  role_arn:string prop ->
  role_type:string prop ->
  unit ->
  aws_auditmanager_assessment_delegation

val yojson_of_aws_auditmanager_assessment_delegation :
  aws_auditmanager_assessment_delegation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  assessment_id : string prop;
  comment : string prop;
  control_set_id : string prop;
  delegation_id : string prop;
  id : string prop;
  role_arn : string prop;
  role_type : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  assessment_id:string prop ->
  control_set_id:string prop ->
  role_arn:string prop ->
  role_type:string prop ->
  string ->
  t
