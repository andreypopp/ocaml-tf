(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssmcontacts_contact

val aws_ssmcontacts_contact :
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  alias:string prop ->
  type_:string prop ->
  unit ->
  aws_ssmcontacts_contact

val yojson_of_aws_ssmcontacts_contact :
  aws_ssmcontacts_contact -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alias : string prop;
  arn : string prop;
  display_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  alias:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  alias:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
