(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type control__input_parameter

val control__input_parameter :
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  control__input_parameter

type control__scope

val control__scope :
  ?compliance_resource_ids:string prop list ->
  ?compliance_resource_types:string prop list ->
  ?tags:(string * string prop) list ->
  unit ->
  control__scope

type control

val control :
  ?scope:control__scope list ->
  name:string prop ->
  input_parameter:control__input_parameter list ->
  unit ->
  control

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_backup_framework

val aws_backup_framework :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  control:control list ->
  unit ->
  aws_backup_framework

val yojson_of_aws_backup_framework : aws_backup_framework -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  control:control list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  control:control list ->
  string ->
  t Tf_core.resource
