(** Creates a User Schema property. This resource allows you to create and configure a custom user schema property. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type array_one_of

val array_one_of :
  const:string prop -> title:string prop -> unit -> array_one_of

type master_override_priority

val master_override_priority :
  ?type_:string prop ->
  value:string prop ->
  unit ->
  master_override_priority

type one_of

val one_of : const:string prop -> title:string prop -> unit -> one_of

type okta_user_schema_property

val okta_user_schema_property :
  ?array_enum:string prop list ->
  ?array_type:string prop ->
  ?description:string prop ->
  ?enum:string prop list ->
  ?external_name:string prop ->
  ?external_namespace:string prop ->
  ?id:string prop ->
  ?master:string prop ->
  ?max_length:float prop ->
  ?min_length:float prop ->
  ?pattern:string prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?scope:string prop ->
  ?unique:string prop ->
  ?user_type:string prop ->
  ?array_one_of:array_one_of list ->
  ?master_override_priority:master_override_priority list ->
  ?one_of:one_of list ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  unit ->
  okta_user_schema_property

val yojson_of_okta_user_schema_property :
  okta_user_schema_property -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  array_enum : string list prop;
  array_type : string prop;
  description : string prop;
  enum : string list prop;
  external_name : string prop;
  external_namespace : string prop;
  id : string prop;
  index : string prop;
  master : string prop;
  max_length : float prop;
  min_length : float prop;
  pattern : string prop;
  permissions : string prop;
  required : bool prop;
  scope : string prop;
  title : string prop;
  type_ : string prop;
  unique : string prop;
  user_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?array_enum:string prop list ->
  ?array_type:string prop ->
  ?description:string prop ->
  ?enum:string prop list ->
  ?external_name:string prop ->
  ?external_namespace:string prop ->
  ?id:string prop ->
  ?master:string prop ->
  ?max_length:float prop ->
  ?min_length:float prop ->
  ?pattern:string prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?scope:string prop ->
  ?unique:string prop ->
  ?user_type:string prop ->
  ?array_one_of:array_one_of list ->
  ?master_override_priority:master_override_priority list ->
  ?one_of:one_of list ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?array_enum:string prop list ->
  ?array_type:string prop ->
  ?description:string prop ->
  ?enum:string prop list ->
  ?external_name:string prop ->
  ?external_namespace:string prop ->
  ?id:string prop ->
  ?master:string prop ->
  ?max_length:float prop ->
  ?min_length:float prop ->
  ?pattern:string prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?scope:string prop ->
  ?unique:string prop ->
  ?user_type:string prop ->
  ?array_one_of:array_one_of list ->
  ?master_override_priority:master_override_priority list ->
  ?one_of:one_of list ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
