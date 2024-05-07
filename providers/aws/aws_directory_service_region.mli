(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_settings

val vpc_settings :
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  vpc_settings

type aws_directory_service_region

val aws_directory_service_region :
  ?desired_number_of_domain_controllers:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  directory_id:string prop ->
  region_name:string prop ->
  vpc_settings:vpc_settings list ->
  unit ->
  aws_directory_service_region

val yojson_of_aws_directory_service_region :
  aws_directory_service_region -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  desired_number_of_domain_controllers : float prop;
  directory_id : string prop;
  id : string prop;
  region_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?desired_number_of_domain_controllers:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  directory_id:string prop ->
  region_name:string prop ->
  vpc_settings:vpc_settings list ->
  string ->
  t

val make :
  ?desired_number_of_domain_controllers:float prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  directory_id:string prop ->
  region_name:string prop ->
  vpc_settings:vpc_settings list ->
  string ->
  t Tf_core.resource
