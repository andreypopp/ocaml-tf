(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_domain_mapping__ssl_settings
type google_app_engine_domain_mapping__timeouts

type google_app_engine_domain_mapping__resource_records = {
  name : string prop;  (** name *)
  rrdata : string prop;  (** rrdata *)
  type_ : string prop; [@key "type"]  (** type *)
}

type google_app_engine_domain_mapping

val google_app_engine_domain_mapping :
  ?id:string prop ->
  ?override_strategy:string prop ->
  ?project:string prop ->
  ?timeouts:google_app_engine_domain_mapping__timeouts ->
  domain_name:string prop ->
  ssl_settings:google_app_engine_domain_mapping__ssl_settings list ->
  string ->
  unit
