(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_elastic_beanstalk_hosted_zone

val aws_elastic_beanstalk_hosted_zone :
  ?id:string prop ->
  ?region:string prop ->
  unit ->
  aws_elastic_beanstalk_hosted_zone

val yojson_of_aws_elastic_beanstalk_hosted_zone :
  aws_elastic_beanstalk_hosted_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  region : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
