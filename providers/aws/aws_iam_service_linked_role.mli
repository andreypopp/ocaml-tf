(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_service_linked_role

val aws_iam_service_linked_role :
  ?custom_suffix:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aws_service_name:string prop ->
  unit ->
  aws_iam_service_linked_role

val yojson_of_aws_iam_service_linked_role :
  aws_iam_service_linked_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  aws_service_name : string prop;
  create_date : string prop;
  custom_suffix : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  unique_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_suffix:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aws_service_name:string prop ->
  string ->
  t

val make :
  ?custom_suffix:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aws_service_name:string prop ->
  string ->
  t Tf_core.resource
