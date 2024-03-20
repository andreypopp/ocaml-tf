(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type children = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type aws_organizations_organizational_units

val aws_organizations_organizational_units :
  ?id:string prop ->
  parent_id:string prop ->
  unit ->
  aws_organizations_organizational_units

val yojson_of_aws_organizations_organizational_units :
  aws_organizations_organizational_units -> json

(** RESOURCE REGISTRATION *)

type t = private {
  children : children list prop;
  id : string prop;
  parent_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent_id:string prop ->
  string ->
  t Tf_core.resource
