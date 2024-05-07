(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type attribute__value

val attribute__value :
  source:string prop list -> unit -> attribute__value

type attribute

val attribute :
  key:string prop -> value:attribute__value list -> unit -> attribute

type aws_ssoadmin_instance_access_control_attributes

val aws_ssoadmin_instance_access_control_attributes :
  ?id:string prop ->
  instance_arn:string prop ->
  attribute:attribute list ->
  unit ->
  aws_ssoadmin_instance_access_control_attributes

val yojson_of_aws_ssoadmin_instance_access_control_attributes :
  aws_ssoadmin_instance_access_control_attributes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance_arn : string prop;
  status : string prop;
  status_reason : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_arn:string prop ->
  attribute:attribute list ->
  string ->
  t

val make :
  ?id:string prop ->
  instance_arn:string prop ->
  attribute:attribute list ->
  string ->
  t Tf_core.resource
