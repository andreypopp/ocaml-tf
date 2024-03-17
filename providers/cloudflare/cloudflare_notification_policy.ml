(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_notification_policy__email_integration = {
  id : string prop;  (** id *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** The email ID to which the notification should be dispatched. *)

type cloudflare_notification_policy__filters = {
  actions : string prop list option; [@option]
      (** Targeted actions for alert. *)
  affected_components : string prop list option; [@option]
      (** Affected components for alert. Available values: `API`, `API Shield`, `Access`, `Always Online`, `Analytics`, `Apps Marketplace`, `Argo Smart Routing`, `Audit Logs`, `Authoritative DNS`, `Billing`, `Bot Management`, `Bring Your Own IP (BYOIP)`, `Browser Isolation`, `CDN Cache Purge`, `CDN/Cache`, `Cache Reserve`, `Challenge Platform`, `Cloud Access Security Broker (CASB)`, `Community Site`, `DNS Root Servers`, `DNS Updates`, `Dashboard`, `Data Loss Prevention (DLP)`, `Developer's Site`, `Digital Experience Monitoring (DEX)`, `Distributed Web Gateway`, `Durable Objects`, `Email Routing`, `Ethereum Gateway`, `Firewall`, `Gateway`, `Geo-Key Manager`, `Image Resizing`, `Images`, `Infrastructure`, `Lists`, `Load Balancing and Monitoring`, `Logs`, `Magic Firewall`, `Magic Transit`, `Magic WAN`, `Magic WAN Connector`, `Marketing Site`, `Mirage`, `Network`, `Notifications`, `Observatory`, `Page Shield`, `Pages`, `R2`, `Radar`, `Randomness Beacon`, `Recursive DNS`, `Registrar`, `Registration Data Access Protocol (RDAP)`, `SSL Certificate Provisioning`, `SSL for SaaS Provisioning`, `Security Center`, `Snippets`, `Spectrum`, `Speed Optimizations`, `Stream`, `Support Site`, `Time Services`, `Trace`, `Tunnel`, `Turnstile`, `WARP`, `Waiting Room`, `Web Analytics`, `Workers`, `Workers KV`, `Workers Preview`, `Zaraz`, `Zero Trust`, `Zero Trust Dashboard`, `Zone Versioning`. *)
  alert_trigger_preferences : string prop list option; [@option]
      (** Alert trigger preferences. Example: `slo`. *)
  enabled : string prop list option; [@option]
      (** State of the pool to alert on. *)
  environment : string prop list option; [@option]
      (** Environment of pages. Available values: `ENVIRONMENT_PREVIEW`, `ENVIRONMENT_PRODUCTION`. *)
  event : string prop list option; [@option]
      (** Pages event to alert. Available values: `EVENT_DEPLOYMENT_STARTED`, `EVENT_DEPLOYMENT_FAILED`, `EVENT_DEPLOYMENT_SUCCESS`. *)
  event_source : string prop list option; [@option]
      (** Source configuration to alert on for pool or origin. *)
  event_type : string prop list option; [@option]
      (** Stream event type to alert on. *)
  group_by : string prop list option; [@option]
      (** Alert grouping. *)
  health_check_id : string prop list option; [@option]
      (** Identifier health check. Required when using `filters.0.status`. *)
  incident_impact : string prop list option; [@option]
      (** The incident impact level that will trigger the dispatch of a notification. Available values: `INCIDENT_IMPACT_NONE`, `INCIDENT_IMPACT_MINOR`, `INCIDENT_IMPACT_MAJOR`, `INCIDENT_IMPACT_CRITICAL`. *)
  input_id : string prop list option; [@option]
      (** Stream input id to alert on. *)
  limit : string prop list option; [@option]
      (** A numerical limit. Example: `100`. *)
  megabits_per_second : string prop list option; [@option]
      (** Megabits per second threshold for dos alert. *)
  new_health : string prop list option; [@option]
      (** Health status to alert on for pool or origin. *)
  new_status : string prop list option; [@option]
      (** Tunnel health status to alert on. *)
  packets_per_second : string prop list option; [@option]
      (** Packets per second threshold for dos alert. *)
  pool_id : string prop list option; [@option]
      (** Load balancer pool identifier. *)
  product : string prop list option; [@option]
      (** Product name. Available values: `worker_requests`, `worker_durable_objects_requests`, `worker_durable_objects_duration`, `worker_durable_objects_data_transfer`, `worker_durable_objects_stored_data`, `worker_durable_objects_storage_deletes`, `worker_durable_objects_storage_writes`, `worker_durable_objects_storage_reads`. *)
  project_id : string prop list option; [@option]
      (** Identifier of pages project. *)
  protocol : string prop list option; [@option]
      (** Protocol to alert on for dos. *)
  requests_per_second : string prop list option; [@option]
      (** Requests per second threshold for dos alert. *)
  selectors : string prop list option; [@option]
      (** Selectors for alert. Valid options depend on the alert type. *)
  services : string prop list option; [@option]  (** services *)
  slo : string prop list option; [@option]
      (** A numerical limit. Example: `99.9`. *)
  status : string prop list option; [@option]
      (** Status to alert on. *)
  target_hostname : string prop list option; [@option]
      (** Target host to alert on for dos. *)
  target_zone_name : string prop list option; [@option]
      (** Target domain to alert on. *)
  tunnel_id : string prop list option; [@option]
      (** Tunnel IDs to alert on. *)
  where : string prop list option; [@option]
      (** Filter for alert. *)
  zones : string prop list option; [@option]
      (** A list of zone identifiers. *)
}
[@@deriving yojson_of]
(** An optional nested block of filters that applies to the selected `alert_type`. A key-value map that specifies the type of filter and the values to match against (refer to the alert type block for available fields). *)

type cloudflare_notification_policy__pagerduty_integration = {
  id : string prop;  (** id *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** The unique ID of a configured pagerduty endpoint to which the notification should be dispatched. *)

type cloudflare_notification_policy__webhooks_integration = {
  id : string prop;  (** id *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** The unique ID of a configured webhooks endpoint to which the notification should be dispatched. *)

type cloudflare_notification_policy = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  alert_type : string prop;
      (** The event type that will trigger the dispatch of a notification. See the developer documentation for descriptions of [available alert types](https://developers.cloudflare.com/fundamentals/notifications/notification-available/). Available values: `advanced_http_alert_error`, `access_custom_certificate_expiration_type`, `advanced_ddos_attack_l4_alert`, `advanced_ddos_attack_l7_alert`, `bgp_hijack_notification`, `billing_usage_alert`, `block_notification_block_removed`, `block_notification_new_block`, `block_notification_review_rejected`, `brand_protection_alert`, `brand_protection_digest`, `clickhouse_alert_fw_anomaly`, `clickhouse_alert_fw_ent_anomaly`, `custom_ssl_certificate_event_type`, `dedicated_ssl_certificate_event_type`, `dos_attack_l4`, `dos_attack_l7`, `expiring_service_token_alert`, `failing_logpush_job_disabled_alert`, `fbm_auto_advertisement`, `fbm_dosd_attack`, `fbm_volumetric_attack`, `health_check_status_notification`, `hostname_aop_custom_certificate_expiration_type`, `http_alert_edge_error`, `http_alert_origin_error`, `incident_alert`, `load_balancing_health_alert`, `load_balancing_pool_enablement_alert`, `logo_match_alert`, `magic_tunnel_health_check_event`, `maintenance_event_notification`, `mtls_certificate_store_certificate_expiration_type`, `pages_event_alert`, `radar_notification`, `real_origin_monitoring`, `scriptmonitor_alert_new_code_change_detections`, `scriptmonitor_alert_new_hosts`, `scriptmonitor_alert_new_malicious_hosts`, `scriptmonitor_alert_new_malicious_scripts`, `scriptmonitor_alert_new_malicious_url`, `scriptmonitor_alert_new_max_length_resource_url`, `scriptmonitor_alert_new_resources`, `secondary_dns_all_primaries_failing`, `secondary_dns_primaries_failing`, `secondary_dns_zone_successfully_updated`, `secondary_dns_zone_validation_warning`, `sentinel_alert`, `stream_live_notifications`, `traffic_anomalies_alert`, `tunnel_health_event`, `tunnel_update_event`, `universal_ssl_event_type`, `web_analytics_metrics_update`, `weekly_account_overview`, `workers_alert`, `zone_aop_custom_certificate_expiration_type`. *)
  description : string prop option; [@option]
      (** Description of the notification policy. *)
  enabled : bool prop;  (** The status of the notification policy. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the notification policy. *)
  email_integration :
    cloudflare_notification_policy__email_integration list;
  filters : cloudflare_notification_policy__filters list;
  pagerduty_integration :
    cloudflare_notification_policy__pagerduty_integration list;
  webhooks_integration :
    cloudflare_notification_policy__webhooks_integration list;
}
[@@deriving yojson_of]
(** Provides a resource, that manages a notification policy for
Cloudflare's products. The delivery mechanisms supported are email,
webhooks, and PagerDuty.
 *)

type t = {
  account_id : string prop;
  alert_type : string prop;
  created : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  modified : string prop;
  name : string prop;
}

let cloudflare_notification_policy ?description ?id ~account_id
    ~alert_type ~enabled ~name ~email_integration ~filters
    ~pagerduty_integration ~webhooks_integration __resource_id =
  let __resource_type = "cloudflare_notification_policy" in
  let __resource =
    ({
       account_id;
       alert_type;
       description;
       enabled;
       id;
       name;
       email_integration;
       filters;
       pagerduty_integration;
       webhooks_integration;
     }
      : cloudflare_notification_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_notification_policy __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       alert_type =
         Prop.computed __resource_type __resource_id "alert_type";
       created =
         Prop.computed __resource_type __resource_id "created";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       modified =
         Prop.computed __resource_type __resource_id "modified";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
