(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_elastic_beanstalk_solution_stack

val aws_elastic_beanstalk_solution_stack :
  ?id:string prop ->
  ?most_recent:bool prop ->
  name_regex:string prop ->
  unit ->
  aws_elastic_beanstalk_solution_stack

val yojson_of_aws_elastic_beanstalk_solution_stack :
  aws_elastic_beanstalk_solution_stack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  most_recent : bool prop;
  name : string prop;
  name_regex : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  name_regex:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?most_recent:bool prop ->
  name_regex:string prop ->
  string ->
  t Tf_core.resource
