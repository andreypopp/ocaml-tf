(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_elastic_beanstalk_application_version

val aws_elastic_beanstalk_application_version :
  ?description:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  application:string prop ->
  bucket:string prop ->
  key:string prop ->
  name:string prop ->
  unit ->
  aws_elastic_beanstalk_application_version

val yojson_of_aws_elastic_beanstalk_application_version :
  aws_elastic_beanstalk_application_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application : string prop;
  arn : string prop;
  bucket : string prop;
  description : string prop;
  force_delete : bool prop;
  id : string prop;
  key : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  application:string prop ->
  bucket:string prop ->
  key:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  application:string prop ->
  bucket:string prop ->
  key:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
