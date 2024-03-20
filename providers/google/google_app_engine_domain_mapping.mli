(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type resource_records = {
  name : string prop;  (** name *)
  rrdata : string prop;  (** rrdata *)
  type_ : string prop; [@key "type"]  (** type *)
}

[@@@deriving.end]

type ssl_settings

val ssl_settings :
  ?certificate_id:string prop ->
  ssl_management_type:string prop ->
  unit ->
  ssl_settings

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_app_engine_domain_mapping

val google_app_engine_domain_mapping :
  ?id:string prop ->
  ?override_strategy:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  ssl_settings:ssl_settings list ->
  unit ->
  google_app_engine_domain_mapping

val yojson_of_google_app_engine_domain_mapping :
  google_app_engine_domain_mapping -> json

(** RESOURCE REGISTRATION *)

type t = private {
  domain_name : string prop;
  id : string prop;
  name : string prop;
  override_strategy : string prop;
  project : string prop;
  resource_records : resource_records list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?override_strategy:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  ssl_settings:ssl_settings list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?override_strategy:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  domain_name:string prop ->
  ssl_settings:ssl_settings list ->
  string ->
  t Tf_core.resource
