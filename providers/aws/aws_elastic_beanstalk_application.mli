(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type appversion_lifecycle

val appversion_lifecycle :
  ?delete_source_from_s3:bool prop ->
  ?max_age_in_days:float prop ->
  ?max_count:float prop ->
  service_role:string prop ->
  unit ->
  appversion_lifecycle

type aws_elastic_beanstalk_application

val aws_elastic_beanstalk_application :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?appversion_lifecycle:appversion_lifecycle list ->
  name:string prop ->
  unit ->
  aws_elastic_beanstalk_application

val yojson_of_aws_elastic_beanstalk_application :
  aws_elastic_beanstalk_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?appversion_lifecycle:appversion_lifecycle list ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?appversion_lifecycle:appversion_lifecycle list ->
  name:string prop ->
  string ->
  t Tf_core.resource
