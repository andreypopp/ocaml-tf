(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_macie2_account

val aws_macie2_account :
    ?finding_publishing_frequency:string prop ->
    ?id:string prop ->
    ?status:string prop ->
    unit ->
    aws_macie2_account

val yojson_of_aws_macie2_account : aws_macie2_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_at: string prop;
  finding_publishing_frequency: string prop;
  id: string prop;
  service_role: string prop;
  status: string prop;
  updated_at: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?finding_publishing_frequency:string prop ->
    ?id:string prop ->
    ?status:string prop ->
    string ->
    t

val make :
    ?finding_publishing_frequency:string prop ->
    ?id:string prop ->
    ?status:string prop ->
    string ->
    t Tf_core.resource

