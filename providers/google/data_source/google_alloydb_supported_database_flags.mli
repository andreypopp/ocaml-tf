(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type supported_database_flags__string_restrictions = {
  allowed_values : string prop list;  (** allowed_values *)
}

type supported_database_flags__integer_restrictions = {
  max_value : string prop;  (** max_value *)
  min_value : string prop;  (** min_value *)
}

type supported_database_flags = {
  accepts_multiple_values : bool prop;
      (** accepts_multiple_values *)
  flag_name : string prop;  (** flag_name *)
  integer_restrictions :
    supported_database_flags__integer_restrictions list;
      (** integer_restrictions *)
  name : string prop;  (** name *)
  requires_db_restart : bool prop;  (** requires_db_restart *)
  string_restrictions :
    supported_database_flags__string_restrictions list;
      (** string_restrictions *)
  supported_db_versions : string prop list;
      (** supported_db_versions *)
  value_type : string prop;  (** value_type *)
}

type google_alloydb_supported_database_flags

val google_alloydb_supported_database_flags :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  unit ->
  google_alloydb_supported_database_flags

val yojson_of_google_alloydb_supported_database_flags :
  google_alloydb_supported_database_flags -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  location : string prop;
  project : string prop;
  supported_database_flags : supported_database_flags list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  location:string prop ->
  string ->
  t Tf_core.resource
