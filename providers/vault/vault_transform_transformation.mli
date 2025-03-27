(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_transform_transformation

val vault_transform_transformation :
  ?allowed_roles:string prop list ->
  ?deletion_allowed:bool prop ->
  ?id:string prop ->
  ?masking_character:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  ?templates:string prop list ->
  ?tweak_source:string prop ->
  ?type_:string prop ->
  name:string prop ->
  path:string prop ->
  unit ->
  vault_transform_transformation

val yojson_of_vault_transform_transformation : vault_transform_transformation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allowed_roles : string list prop;
  deletion_allowed : bool prop;
  id : string prop;
  masking_character : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  template : string prop;
  templates : string list prop;
  tweak_source : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allowed_roles:string prop list ->
  ?deletion_allowed:bool prop ->
  ?id:string prop ->
  ?masking_character:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  ?templates:string prop list ->
  ?tweak_source:string prop ->
  ?type_:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?allowed_roles:string prop list ->
  ?deletion_allowed:bool prop ->
  ?id:string prop ->
  ?masking_character:string prop ->
  ?namespace:string prop ->
  ?template:string prop ->
  ?templates:string prop list ->
  ?tweak_source:string prop ->
  ?type_:string prop ->
  name:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource
