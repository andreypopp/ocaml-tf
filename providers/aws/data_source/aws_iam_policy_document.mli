(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type statement__condition

val statement__condition :
  test:string prop ->
  values:string prop list ->
  variable:string prop ->
  unit ->
  statement__condition

type statement__not_principals

val statement__not_principals :
  identifiers:string prop list ->
  type_:string prop ->
  unit ->
  statement__not_principals

type statement__principals

val statement__principals :
  identifiers:string prop list ->
  type_:string prop ->
  unit ->
  statement__principals

type statement

val statement :
  ?actions:string prop list ->
  ?effect:string prop ->
  ?not_actions:string prop list ->
  ?not_resources:string prop list ->
  ?resources:string prop list ->
  ?sid:string prop ->
  condition:statement__condition list ->
  not_principals:statement__not_principals list ->
  principals:statement__principals list ->
  unit ->
  statement

type aws_iam_policy_document

val aws_iam_policy_document :
  ?id:string prop ->
  ?override_json:string prop ->
  ?override_policy_documents:string prop list ->
  ?policy_id:string prop ->
  ?source_json:string prop ->
  ?source_policy_documents:string prop list ->
  ?version:string prop ->
  statement:statement list ->
  unit ->
  aws_iam_policy_document

val yojson_of_aws_iam_policy_document :
  aws_iam_policy_document -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  json : string prop;
  override_json : string prop;
  override_policy_documents : string list prop;
  policy_id : string prop;
  source_json : string prop;
  source_policy_documents : string list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?override_json:string prop ->
  ?override_policy_documents:string prop list ->
  ?policy_id:string prop ->
  ?source_json:string prop ->
  ?source_policy_documents:string prop list ->
  ?version:string prop ->
  statement:statement list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?override_json:string prop ->
  ?override_policy_documents:string prop list ->
  ?policy_id:string prop ->
  ?source_json:string prop ->
  ?source_policy_documents:string prop list ->
  ?version:string prop ->
  statement:statement list ->
  string ->
  t Tf_core.resource
