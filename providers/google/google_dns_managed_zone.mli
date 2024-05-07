(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloud_logging_config

val cloud_logging_config :
  enable_logging:bool prop -> unit -> cloud_logging_config

type dnssec_config__default_key_specs

val dnssec_config__default_key_specs :
  ?algorithm:string prop ->
  ?key_length:float prop ->
  ?key_type:string prop ->
  ?kind:string prop ->
  unit ->
  dnssec_config__default_key_specs

type dnssec_config

val dnssec_config :
  ?kind:string prop ->
  ?non_existence:string prop ->
  ?state:string prop ->
  ?default_key_specs:dnssec_config__default_key_specs list ->
  unit ->
  dnssec_config

type forwarding_config__target_name_servers

val forwarding_config__target_name_servers :
  ?forwarding_path:string prop ->
  ipv4_address:string prop ->
  unit ->
  forwarding_config__target_name_servers

type forwarding_config

val forwarding_config :
  target_name_servers:forwarding_config__target_name_servers list ->
  unit ->
  forwarding_config

type peering_config__target_network

val peering_config__target_network :
  network_url:string prop -> unit -> peering_config__target_network

type peering_config

val peering_config :
  target_network:peering_config__target_network list ->
  unit ->
  peering_config

type private_visibility_config__gke_clusters

val private_visibility_config__gke_clusters :
  gke_cluster_name:string prop ->
  unit ->
  private_visibility_config__gke_clusters

type private_visibility_config__networks

val private_visibility_config__networks :
  network_url:string prop ->
  unit ->
  private_visibility_config__networks

type private_visibility_config

val private_visibility_config :
  ?gke_clusters:private_visibility_config__gke_clusters list ->
  networks:private_visibility_config__networks list ->
  unit ->
  private_visibility_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dns_managed_zone

val google_dns_managed_zone :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?visibility:string prop ->
  ?cloud_logging_config:cloud_logging_config list ->
  ?dnssec_config:dnssec_config list ->
  ?forwarding_config:forwarding_config list ->
  ?peering_config:peering_config list ->
  ?private_visibility_config:private_visibility_config list ->
  ?timeouts:timeouts ->
  dns_name:string prop ->
  name:string prop ->
  unit ->
  google_dns_managed_zone

val yojson_of_google_dns_managed_zone :
  google_dns_managed_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_time : string prop;
  description : string prop;
  dns_name : string prop;
  effective_labels : (string * string) list prop;
  force_destroy : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  managed_zone_id : float prop;
  name : string prop;
  name_servers : string list prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  visibility : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?visibility:string prop ->
  ?cloud_logging_config:cloud_logging_config list ->
  ?dnssec_config:dnssec_config list ->
  ?forwarding_config:forwarding_config list ->
  ?peering_config:peering_config list ->
  ?private_visibility_config:private_visibility_config list ->
  ?timeouts:timeouts ->
  dns_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?visibility:string prop ->
  ?cloud_logging_config:cloud_logging_config list ->
  ?dnssec_config:dnssec_config list ->
  ?forwarding_config:forwarding_config list ->
  ?peering_config:peering_config list ->
  ?private_visibility_config:private_visibility_config list ->
  ?timeouts:timeouts ->
  dns_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
