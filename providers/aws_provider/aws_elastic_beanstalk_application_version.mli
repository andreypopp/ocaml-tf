(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_application_version

type t = private {
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
  string ->
  t
