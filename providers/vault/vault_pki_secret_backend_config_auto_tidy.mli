(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_pki_secret_backend_config_auto_tidy

val vault_pki_secret_backend_config_auto_tidy :
  ?acme_account_safety_buffer:string prop ->
  ?id:string prop ->
  ?interval_duration:string prop ->
  ?issuer_safety_buffer:string prop ->
  ?maintain_stored_certificate_counts:bool prop ->
  ?max_startup_backoff_duration:string prop ->
  ?min_startup_backoff_duration:string prop ->
  ?namespace:string prop ->
  ?pause_duration:string prop ->
  ?publish_stored_certificate_count_metrics:bool prop ->
  ?revocation_queue_safety_buffer:string prop ->
  ?safety_buffer:string prop ->
  ?tidy_acme:bool prop ->
  ?tidy_cert_metadata:bool prop ->
  ?tidy_cert_store:bool prop ->
  ?tidy_cmpv2_nonce_store:bool prop ->
  ?tidy_cross_cluster_revoked_certs:bool prop ->
  ?tidy_expired_issuers:bool prop ->
  ?tidy_move_legacy_ca_bundle:bool prop ->
  ?tidy_revocation_queue:bool prop ->
  ?tidy_revoked_cert_issuer_associations:bool prop ->
  ?tidy_revoked_certs:bool prop ->
  backend:string prop ->
  enabled:bool prop ->
  unit ->
  vault_pki_secret_backend_config_auto_tidy

val yojson_of_vault_pki_secret_backend_config_auto_tidy : vault_pki_secret_backend_config_auto_tidy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  acme_account_safety_buffer : string prop;
  backend : string prop;
  enabled : bool prop;
  id : string prop;
  interval_duration : string prop;
  issuer_safety_buffer : string prop;
  maintain_stored_certificate_counts : bool prop;
  max_startup_backoff_duration : string prop;
  min_startup_backoff_duration : string prop;
  namespace : string prop;
  pause_duration : string prop;
  publish_stored_certificate_count_metrics : bool prop;
  revocation_queue_safety_buffer : string prop;
  safety_buffer : string prop;
  tidy_acme : bool prop;
  tidy_cert_metadata : bool prop;
  tidy_cert_store : bool prop;
  tidy_cmpv2_nonce_store : bool prop;
  tidy_cross_cluster_revoked_certs : bool prop;
  tidy_expired_issuers : bool prop;
  tidy_move_legacy_ca_bundle : bool prop;
  tidy_revocation_queue : bool prop;
  tidy_revoked_cert_issuer_associations : bool prop;
  tidy_revoked_certs : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?acme_account_safety_buffer:string prop ->
  ?id:string prop ->
  ?interval_duration:string prop ->
  ?issuer_safety_buffer:string prop ->
  ?maintain_stored_certificate_counts:bool prop ->
  ?max_startup_backoff_duration:string prop ->
  ?min_startup_backoff_duration:string prop ->
  ?namespace:string prop ->
  ?pause_duration:string prop ->
  ?publish_stored_certificate_count_metrics:bool prop ->
  ?revocation_queue_safety_buffer:string prop ->
  ?safety_buffer:string prop ->
  ?tidy_acme:bool prop ->
  ?tidy_cert_metadata:bool prop ->
  ?tidy_cert_store:bool prop ->
  ?tidy_cmpv2_nonce_store:bool prop ->
  ?tidy_cross_cluster_revoked_certs:bool prop ->
  ?tidy_expired_issuers:bool prop ->
  ?tidy_move_legacy_ca_bundle:bool prop ->
  ?tidy_revocation_queue:bool prop ->
  ?tidy_revoked_cert_issuer_associations:bool prop ->
  ?tidy_revoked_certs:bool prop ->
  backend:string prop ->
  enabled:bool prop ->
  string ->
  t

val make :
  ?acme_account_safety_buffer:string prop ->
  ?id:string prop ->
  ?interval_duration:string prop ->
  ?issuer_safety_buffer:string prop ->
  ?maintain_stored_certificate_counts:bool prop ->
  ?max_startup_backoff_duration:string prop ->
  ?min_startup_backoff_duration:string prop ->
  ?namespace:string prop ->
  ?pause_duration:string prop ->
  ?publish_stored_certificate_count_metrics:bool prop ->
  ?revocation_queue_safety_buffer:string prop ->
  ?safety_buffer:string prop ->
  ?tidy_acme:bool prop ->
  ?tidy_cert_metadata:bool prop ->
  ?tidy_cert_store:bool prop ->
  ?tidy_cmpv2_nonce_store:bool prop ->
  ?tidy_cross_cluster_revoked_certs:bool prop ->
  ?tidy_expired_issuers:bool prop ->
  ?tidy_move_legacy_ca_bundle:bool prop ->
  ?tidy_revocation_queue:bool prop ->
  ?tidy_revoked_cert_issuer_associations:bool prop ->
  ?tidy_revoked_certs:bool prop ->
  backend:string prop ->
  enabled:bool prop ->
  string ->
  t Tf_core.resource
