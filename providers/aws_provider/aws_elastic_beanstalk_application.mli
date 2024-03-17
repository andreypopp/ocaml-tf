(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_elastic_beanstalk_application__appversion_lifecycle
type aws_elastic_beanstalk_application

val aws_elastic_beanstalk_application :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  appversion_lifecycle:
    aws_elastic_beanstalk_application__appversion_lifecycle list ->
  string ->
  unit
