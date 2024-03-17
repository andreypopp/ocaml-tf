(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_framework__control_sets__controls
type aws_auditmanager_framework__control_sets
type aws_auditmanager_framework

type t = private {
  arn : string prop;
  compliance_type : string prop;
  description : string prop;
  framework_type : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_auditmanager_framework :
  ?compliance_type:string prop ->
  ?description:string prop ->
  ?tags:(string * string prop) list ->
  name:string prop ->
  control_sets:aws_auditmanager_framework__control_sets list ->
  string ->
  t
