(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resource_set

val resource_set :
  ?description:string prop ->
  ?resource_set_status:string prop ->
  ?resource_type_list:string prop list ->
  ?update_token:string prop ->
  name:string prop ->
  unit ->
  resource_set

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fms_resource_set

val aws_fms_resource_set :
  ?tags:(string * string prop) list ->
  ?resource_set:resource_set list ->
  ?timeouts:timeouts ->
  unit ->
  aws_fms_resource_set

val yojson_of_aws_fms_resource_set : aws_fms_resource_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  ?resource_set:resource_set list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  ?resource_set:resource_set list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
