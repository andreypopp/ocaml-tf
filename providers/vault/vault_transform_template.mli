(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transform_template

val vault_transform_template :
  ?alphabet:string prop ->
  ?decode_formats:string prop Tf_core.assoc ->
  ?encode_format:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?pattern:string prop ->
  ?type_:string prop ->
  name:string prop ->
  path:string prop ->
  unit ->
  vault_transform_template

val yojson_of_vault_transform_template : vault_transform_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alphabet : string prop;
  decode_formats : string Tf_core.assoc prop;
  encode_format : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  pattern : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alphabet:string prop ->
  ?decode_formats:string prop Tf_core.assoc ->
  ?encode_format:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?pattern:string prop ->
  ?type_:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?alphabet:string prop ->
  ?decode_formats:string prop Tf_core.assoc ->
  ?encode_format:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?pattern:string prop ->
  ?type_:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
