(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type definition

val definition :
  ?content:string prop ->
  ?s3_location:string prop ->
  unit ->
  definition

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_m2_application

val aws_m2_application :
  ?description:string prop ->
  ?kms_key_id:string prop ->
  ?role_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?definition:definition list ->
  ?timeouts:timeouts ->
  engine_type:string prop ->
  name:string prop ->
  unit ->
  aws_m2_application

val yojson_of_aws_m2_application : aws_m2_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  current_version : float prop;
  description : string prop;
  engine_type : string prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?kms_key_id:string prop ->
  ?role_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?definition:definition list ->
  ?timeouts:timeouts ->
  engine_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?kms_key_id:string prop ->
  ?role_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?definition:definition list ->
  ?timeouts:timeouts ->
  engine_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
