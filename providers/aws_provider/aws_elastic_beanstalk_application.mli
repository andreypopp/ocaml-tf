(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_application__appversion_lifecycle
type aws_elastic_beanstalk_application

val aws_elastic_beanstalk_application :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  appversion_lifecycle:
    aws_elastic_beanstalk_application__appversion_lifecycle list ->
  string ->
  unit
