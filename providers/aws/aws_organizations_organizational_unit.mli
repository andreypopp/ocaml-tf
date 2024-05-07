(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type accounts = {
  arn : string prop;  (** arn *)
  email : string prop;  (** email *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type aws_organizations_organizational_unit

val aws_organizations_organizational_unit :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  parent_id:string prop ->
  unit ->
  aws_organizations_organizational_unit

val yojson_of_aws_organizations_organizational_unit :
  aws_organizations_organizational_unit -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accounts : accounts list prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  parent_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  parent_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  parent_id:string prop ->
  string ->
  t Tf_core.resource
