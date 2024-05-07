

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ram_sharing_with_organization

val aws_ram_sharing_with_organization :
    ?id:string prop ->
    unit ->
    aws_ram_sharing_with_organization

val yojson_of_aws_ram_sharing_with_organization : aws_ram_sharing_with_organization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  id: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?id:string prop ->
    string ->
    t

val make :
    ?id:string prop ->
    string ->
    t Tf_core.resource

