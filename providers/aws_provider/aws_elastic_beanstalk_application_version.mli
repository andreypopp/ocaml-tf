(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_application_version

val aws_elastic_beanstalk_application_version :
  ?description:string ->
  ?force_delete:bool ->
  ?tags:(string * string) list ->
  application:string ->
  bucket:string ->
  key:string ->
  name:string ->
  string ->
  unit
