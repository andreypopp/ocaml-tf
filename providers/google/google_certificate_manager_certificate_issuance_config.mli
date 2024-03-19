(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type certificate_authority_config__certificate_authority_service_config

val certificate_authority_config__certificate_authority_service_config :
  ca_pool:string prop ->
  unit ->
  certificate_authority_config__certificate_authority_service_config

type certificate_authority_config

val certificate_authority_config :
  certificate_authority_service_config:
    certificate_authority_config__certificate_authority_service_config
    list ->
  unit ->
  certificate_authority_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_certificate_manager_certificate_issuance_config

val google_certificate_manager_certificate_issuance_config :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  key_algorithm:string prop ->
  lifetime:string prop ->
  name:string prop ->
  rotation_window_percentage:float prop ->
  certificate_authority_config:certificate_authority_config list ->
  unit ->
  google_certificate_manager_certificate_issuance_config

val yojson_of_google_certificate_manager_certificate_issuance_config :
  google_certificate_manager_certificate_issuance_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  key_algorithm : string prop;
  labels : (string * string) list prop;
  lifetime : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  rotation_window_percentage : float prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  key_algorithm:string prop ->
  lifetime:string prop ->
  name:string prop ->
  rotation_window_percentage:float prop ->
  certificate_authority_config:certificate_authority_config list ->
  string ->
  t
