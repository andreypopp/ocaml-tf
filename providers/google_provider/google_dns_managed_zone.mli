(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_managed_zone__cloud_logging_config
type google_dns_managed_zone__dnssec_config__default_key_specs
type google_dns_managed_zone__dnssec_config
type google_dns_managed_zone__forwarding_config__target_name_servers
type google_dns_managed_zone__forwarding_config
type google_dns_managed_zone__peering_config__target_network
type google_dns_managed_zone__peering_config
type google_dns_managed_zone__private_visibility_config__gke_clusters
type google_dns_managed_zone__private_visibility_config__networks
type google_dns_managed_zone__private_visibility_config
type google_dns_managed_zone__timeouts
type google_dns_managed_zone

val google_dns_managed_zone :
  ?description:string ->
  ?force_destroy:bool ->
  ?labels:(string * string) list ->
  ?visibility:string ->
  ?timeouts:google_dns_managed_zone__timeouts ->
  dns_name:string ->
  name:string ->
  cloud_logging_config:
    google_dns_managed_zone__cloud_logging_config list ->
  dnssec_config:google_dns_managed_zone__dnssec_config list ->
  forwarding_config:google_dns_managed_zone__forwarding_config list ->
  peering_config:google_dns_managed_zone__peering_config list ->
  private_visibility_config:
    google_dns_managed_zone__private_visibility_config list ->
  string ->
  unit
