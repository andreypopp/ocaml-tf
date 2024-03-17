(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_app_engine_domain_mapping__ssl_settings
type google_app_engine_domain_mapping__timeouts

type google_app_engine_domain_mapping__resource_records = {
  name : string;  (** name *)
  rrdata : string;  (** rrdata *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_app_engine_domain_mapping

val google_app_engine_domain_mapping :
  ?override_strategy:string ->
  ?timeouts:google_app_engine_domain_mapping__timeouts ->
  domain_name:string ->
  ssl_settings:google_app_engine_domain_mapping__ssl_settings list ->
  string ->
  unit
