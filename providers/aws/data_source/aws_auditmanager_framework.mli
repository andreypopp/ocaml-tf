(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type control_sets__controls

val control_sets__controls : unit -> control_sets__controls

type control_sets

val control_sets :
  controls:control_sets__controls list -> unit -> control_sets

type aws_auditmanager_framework

val aws_auditmanager_framework :
  framework_type:string prop ->
  name:string prop ->
  control_sets:control_sets list ->
  unit ->
  aws_auditmanager_framework

val yojson_of_aws_auditmanager_framework :
  aws_auditmanager_framework -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  compliance_type : string prop;
  description : string prop;
  framework_type : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  framework_type:string prop ->
  name:string prop ->
  control_sets:control_sets list ->
  string ->
  t

val make :
  framework_type:string prop ->
  name:string prop ->
  control_sets:control_sets list ->
  string ->
  t Tf_core.resource
