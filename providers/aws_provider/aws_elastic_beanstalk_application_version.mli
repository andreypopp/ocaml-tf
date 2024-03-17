(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit
