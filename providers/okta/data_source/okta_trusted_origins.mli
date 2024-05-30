(** Get List of Trusted Origins using filters. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type trusted_origins = {
  active : bool prop;  (** active *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  origin : string prop;  (** origin *)
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** scopes *)
}

type okta_trusted_origins

val okta_trusted_origins :
  ?filter:string prop ->
  ?id:string prop ->
  unit ->
  okta_trusted_origins

val yojson_of_okta_trusted_origins : okta_trusted_origins -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  filter : string prop;
  id : string prop;
  trusted_origins : trusted_origins list prop;
}

val register :
  ?tf_module:tf_module ->
  ?filter:string prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?filter:string prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
