(** Manages a User Base Schema property. This resource allows you to configure a base user schema property. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_user_base_schema_property

val okta_user_base_schema_property :
  ?id:string prop ->
  ?master:string prop ->
  ?pattern:string prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?user_type:string prop ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  unit ->
  okta_user_base_schema_property

val yojson_of_okta_user_base_schema_property :
  okta_user_base_schema_property -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  index : string prop;
  master : string prop;
  pattern : string prop;
  permissions : string prop;
  required : bool prop;
  title : string prop;
  type_ : string prop;
  user_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?master:string prop ->
  ?pattern:string prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?user_type:string prop ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?master:string prop ->
  ?pattern:string prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?user_type:string prop ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
