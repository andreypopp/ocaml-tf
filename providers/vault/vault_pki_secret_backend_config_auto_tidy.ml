(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_config_auto_tidy = {
  acme_account_safety_buffer : string prop option; [@option]
  backend : string prop;
  enabled : bool prop;
  id : string prop option; [@option]
  interval_duration : string prop option; [@option]
  issuer_safety_buffer : string prop option; [@option]
  maintain_stored_certificate_counts : bool prop option; [@option]
  max_startup_backoff_duration : string prop option; [@option]
  min_startup_backoff_duration : string prop option; [@option]
  namespace : string prop option; [@option]
  pause_duration : string prop option; [@option]
  publish_stored_certificate_count_metrics : bool prop option; [@option]
  revocation_queue_safety_buffer : string prop option; [@option]
  safety_buffer : string prop option; [@option]
  tidy_acme : bool prop option; [@option]
  tidy_cert_metadata : bool prop option; [@option]
  tidy_cert_store : bool prop option; [@option]
  tidy_cmpv2_nonce_store : bool prop option; [@option]
  tidy_cross_cluster_revoked_certs : bool prop option; [@option]
  tidy_expired_issuers : bool prop option; [@option]
  tidy_move_legacy_ca_bundle : bool prop option; [@option]
  tidy_revocation_queue : bool prop option; [@option]
  tidy_revoked_cert_issuer_associations : bool prop option; [@option]
  tidy_revoked_certs : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_config_auto_tidy) -> ()

let yojson_of_vault_pki_secret_backend_config_auto_tidy =
  (function
   | {
       acme_account_safety_buffer = v_acme_account_safety_buffer;
       backend = v_backend;
       enabled = v_enabled;
       id = v_id;
       interval_duration = v_interval_duration;
       issuer_safety_buffer = v_issuer_safety_buffer;
       maintain_stored_certificate_counts = v_maintain_stored_certificate_counts;
       max_startup_backoff_duration = v_max_startup_backoff_duration;
       min_startup_backoff_duration = v_min_startup_backoff_duration;
       namespace = v_namespace;
       pause_duration = v_pause_duration;
       publish_stored_certificate_count_metrics = v_publish_stored_certificate_count_metrics;
       revocation_queue_safety_buffer = v_revocation_queue_safety_buffer;
       safety_buffer = v_safety_buffer;
       tidy_acme = v_tidy_acme;
       tidy_cert_metadata = v_tidy_cert_metadata;
       tidy_cert_store = v_tidy_cert_store;
       tidy_cmpv2_nonce_store = v_tidy_cmpv2_nonce_store;
       tidy_cross_cluster_revoked_certs = v_tidy_cross_cluster_revoked_certs;
       tidy_expired_issuers = v_tidy_expired_issuers;
       tidy_move_legacy_ca_bundle = v_tidy_move_legacy_ca_bundle;
       tidy_revocation_queue = v_tidy_revocation_queue;
       tidy_revoked_cert_issuer_associations = v_tidy_revoked_cert_issuer_associations;
       tidy_revoked_certs = v_tidy_revoked_certs;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_tidy_revoked_certs with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_revoked_certs", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_revoked_cert_issuer_associations with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_revoked_cert_issuer_associations", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_revocation_queue with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_revocation_queue", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_move_legacy_ca_bundle with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_move_legacy_ca_bundle", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_expired_issuers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_expired_issuers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_cross_cluster_revoked_certs with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_cross_cluster_revoked_certs", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_cmpv2_nonce_store with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_cmpv2_nonce_store", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_cert_store with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_cert_store", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_cert_metadata with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_cert_metadata", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tidy_acme with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tidy_acme", arg in
         bnd :: bnds
     in
     let bnds =
       match v_safety_buffer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "safety_buffer", arg in
         bnd :: bnds
     in
     let bnds =
       match v_revocation_queue_safety_buffer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "revocation_queue_safety_buffer", arg in
         bnd :: bnds
     in
     let bnds =
       match v_publish_stored_certificate_count_metrics with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "publish_stored_certificate_count_metrics", arg in
         bnd :: bnds
     in
     let bnds =
       match v_pause_duration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "pause_duration", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_min_startup_backoff_duration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "min_startup_backoff_duration", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_startup_backoff_duration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "max_startup_backoff_duration", arg in
         bnd :: bnds
     in
     let bnds =
       match v_maintain_stored_certificate_counts with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "maintain_stored_certificate_counts", arg in
         bnd :: bnds
     in
     let bnds =
       match v_issuer_safety_buffer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "issuer_safety_buffer", arg in
         bnd :: bnds
     in
     let bnds =
       match v_interval_duration with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "interval_duration", arg in
         bnd :: bnds
     in
     let bnds =
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_bool v_enabled in
       ("enabled", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_acme_account_safety_buffer with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "acme_account_safety_buffer", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_config_auto_tidy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_config_auto_tidy

[@@@deriving.end]

let vault_pki_secret_backend_config_auto_tidy ?acme_account_safety_buffer ?id ?interval_duration ?issuer_safety_buffer
  ?maintain_stored_certificate_counts ?max_startup_backoff_duration ?min_startup_backoff_duration ?namespace
  ?pause_duration ?publish_stored_certificate_count_metrics ?revocation_queue_safety_buffer ?safety_buffer ?tidy_acme
  ?tidy_cert_metadata ?tidy_cert_store ?tidy_cmpv2_nonce_store ?tidy_cross_cluster_revoked_certs ?tidy_expired_issuers
  ?tidy_move_legacy_ca_bundle ?tidy_revocation_queue ?tidy_revoked_cert_issuer_associations ?tidy_revoked_certs ~backend
  ~enabled () =
  ({
     acme_account_safety_buffer;
     backend;
     enabled;
     id;
     interval_duration;
     issuer_safety_buffer;
     maintain_stored_certificate_counts;
     max_startup_backoff_duration;
     min_startup_backoff_duration;
     namespace;
     pause_duration;
     publish_stored_certificate_count_metrics;
     revocation_queue_safety_buffer;
     safety_buffer;
     tidy_acme;
     tidy_cert_metadata;
     tidy_cert_store;
     tidy_cmpv2_nonce_store;
     tidy_cross_cluster_revoked_certs;
     tidy_expired_issuers;
     tidy_move_legacy_ca_bundle;
     tidy_revocation_queue;
     tidy_revoked_cert_issuer_associations;
     tidy_revoked_certs;
   }
    : vault_pki_secret_backend_config_auto_tidy)

type t = {
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

let make ?acme_account_safety_buffer ?id ?interval_duration ?issuer_safety_buffer ?maintain_stored_certificate_counts
  ?max_startup_backoff_duration ?min_startup_backoff_duration ?namespace ?pause_duration
  ?publish_stored_certificate_count_metrics ?revocation_queue_safety_buffer ?safety_buffer ?tidy_acme
  ?tidy_cert_metadata ?tidy_cert_store ?tidy_cmpv2_nonce_store ?tidy_cross_cluster_revoked_certs ?tidy_expired_issuers
  ?tidy_move_legacy_ca_bundle ?tidy_revocation_queue ?tidy_revoked_cert_issuer_associations ?tidy_revoked_certs ~backend
  ~enabled __id =
  let __type = "vault_pki_secret_backend_config_auto_tidy" in
  let __attrs =
    ({
       tf_name = __id;
       acme_account_safety_buffer = Prop.computed __type __id "acme_account_safety_buffer";
       backend = Prop.computed __type __id "backend";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       interval_duration = Prop.computed __type __id "interval_duration";
       issuer_safety_buffer = Prop.computed __type __id "issuer_safety_buffer";
       maintain_stored_certificate_counts = Prop.computed __type __id "maintain_stored_certificate_counts";
       max_startup_backoff_duration = Prop.computed __type __id "max_startup_backoff_duration";
       min_startup_backoff_duration = Prop.computed __type __id "min_startup_backoff_duration";
       namespace = Prop.computed __type __id "namespace";
       pause_duration = Prop.computed __type __id "pause_duration";
       publish_stored_certificate_count_metrics = Prop.computed __type __id "publish_stored_certificate_count_metrics";
       revocation_queue_safety_buffer = Prop.computed __type __id "revocation_queue_safety_buffer";
       safety_buffer = Prop.computed __type __id "safety_buffer";
       tidy_acme = Prop.computed __type __id "tidy_acme";
       tidy_cert_metadata = Prop.computed __type __id "tidy_cert_metadata";
       tidy_cert_store = Prop.computed __type __id "tidy_cert_store";
       tidy_cmpv2_nonce_store = Prop.computed __type __id "tidy_cmpv2_nonce_store";
       tidy_cross_cluster_revoked_certs = Prop.computed __type __id "tidy_cross_cluster_revoked_certs";
       tidy_expired_issuers = Prop.computed __type __id "tidy_expired_issuers";
       tidy_move_legacy_ca_bundle = Prop.computed __type __id "tidy_move_legacy_ca_bundle";
       tidy_revocation_queue = Prop.computed __type __id "tidy_revocation_queue";
       tidy_revoked_cert_issuer_associations = Prop.computed __type __id "tidy_revoked_cert_issuer_associations";
       tidy_revoked_certs = Prop.computed __type __id "tidy_revoked_certs";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_config_auto_tidy
        (vault_pki_secret_backend_config_auto_tidy ?acme_account_safety_buffer ?id ?interval_duration
           ?issuer_safety_buffer ?maintain_stored_certificate_counts ?max_startup_backoff_duration
           ?min_startup_backoff_duration ?namespace ?pause_duration ?publish_stored_certificate_count_metrics
           ?revocation_queue_safety_buffer ?safety_buffer ?tidy_acme ?tidy_cert_metadata ?tidy_cert_store
           ?tidy_cmpv2_nonce_store ?tidy_cross_cluster_revoked_certs ?tidy_expired_issuers ?tidy_move_legacy_ca_bundle
           ?tidy_revocation_queue ?tidy_revoked_cert_issuer_associations ?tidy_revoked_certs ~backend ~enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?acme_account_safety_buffer ?id ?interval_duration ?issuer_safety_buffer
  ?maintain_stored_certificate_counts ?max_startup_backoff_duration ?min_startup_backoff_duration ?namespace
  ?pause_duration ?publish_stored_certificate_count_metrics ?revocation_queue_safety_buffer ?safety_buffer ?tidy_acme
  ?tidy_cert_metadata ?tidy_cert_store ?tidy_cmpv2_nonce_store ?tidy_cross_cluster_revoked_certs ?tidy_expired_issuers
  ?tidy_move_legacy_ca_bundle ?tidy_revocation_queue ?tidy_revoked_cert_issuer_associations ?tidy_revoked_certs ~backend
  ~enabled __id =
  let (r : _ Tf_core.resource) =
    make ?acme_account_safety_buffer ?id ?interval_duration ?issuer_safety_buffer ?maintain_stored_certificate_counts
      ?max_startup_backoff_duration ?min_startup_backoff_duration ?namespace ?pause_duration
      ?publish_stored_certificate_count_metrics ?revocation_queue_safety_buffer ?safety_buffer ?tidy_acme
      ?tidy_cert_metadata ?tidy_cert_store ?tidy_cmpv2_nonce_store ?tidy_cross_cluster_revoked_certs
      ?tidy_expired_issuers ?tidy_move_legacy_ca_bundle ?tidy_revocation_queue ?tidy_revoked_cert_issuer_associations
      ?tidy_revoked_certs ~backend ~enabled __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
