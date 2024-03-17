(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_assessment_report

type t = private {
  assessment_id : string prop;
  author : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

val aws_auditmanager_assessment_report :
  ?description:string prop ->
  assessment_id:string prop ->
  name:string prop ->
  string ->
  t
