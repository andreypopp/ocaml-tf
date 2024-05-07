(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type appversion_lifecycle = {
  delete_source_from_s3 : bool prop;  (** delete_source_from_s3 *)
  max_age_in_days : float prop;  (** max_age_in_days *)
  max_count : float prop;  (** max_count *)
  service_role : string prop;  (** service_role *)
}

type aws_elastic_beanstalk_application

val aws_elastic_beanstalk_application :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_elastic_beanstalk_application

val yojson_of_aws_elastic_beanstalk_application :
  aws_elastic_beanstalk_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  appversion_lifecycle : appversion_lifecycle list prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
