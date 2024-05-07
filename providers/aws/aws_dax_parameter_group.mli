(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type parameters

val parameters :
  name:string prop -> value:string prop -> unit -> parameters

type aws_dax_parameter_group

val aws_dax_parameter_group :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  parameters:parameters list ->
  unit ->
  aws_dax_parameter_group

val yojson_of_aws_dax_parameter_group :
  aws_dax_parameter_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  parameters:parameters list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  parameters:parameters list ->
  string ->
  t Tf_core.resource
