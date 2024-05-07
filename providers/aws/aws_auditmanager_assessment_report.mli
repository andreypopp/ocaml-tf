(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_auditmanager_assessment_report

val aws_auditmanager_assessment_report :
  ?description:string prop ->
  assessment_id:string prop ->
  name:string prop ->
  unit ->
  aws_auditmanager_assessment_report

val yojson_of_aws_auditmanager_assessment_report :
  aws_auditmanager_assessment_report -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assessment_id : string prop;
  author : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  assessment_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  assessment_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
