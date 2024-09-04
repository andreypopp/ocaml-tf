(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_organizations_policy

val aws_organizations_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  content:string prop ->
  name:string prop ->
  unit ->
  aws_organizations_policy

val yojson_of_aws_organizations_policy :
  aws_organizations_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  skip_destroy : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  content:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  content:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
