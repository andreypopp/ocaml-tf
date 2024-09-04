(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type gclb_targets__ip_configs = {
  ip_address : string prop;  (** ip_address *)
  ports : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ports *)
}

type gclb_targets = {
  ip_configs : gclb_targets__ip_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_configs *)
  target_https_proxy : string prop;  (** target_https_proxy *)
  target_ssl_proxy : string prop;  (** target_ssl_proxy *)
}

type google_certificate_manager_certificate_map

val google_certificate_manager_certificate_map :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  unit ->
  google_certificate_manager_certificate_map

val yojson_of_google_certificate_manager_certificate_map :
  google_certificate_manager_certificate_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  gclb_targets : gclb_targets list prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?project:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
