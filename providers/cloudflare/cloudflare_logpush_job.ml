(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_logpush_job = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. *)
  dataset : string prop;
      (** The kind of the dataset to use with the logpush job. Available values: `access_requests`, `casb_findings`, `firewall_events`, `http_requests`, `spectrum_events`, `nel_reports`, `audit_logs`, `gateway_dns`, `gateway_http`, `gateway_network`, `dns_logs`, `network_analytics_logs`, `workers_trace_events`, `device_posture_results`, `zero_trust_network_sessions`, `magic_ids_detections`. *)
  destination_conf : string prop;
      (** Uniquely identifies a resource (such as an s3 bucket) where data will be pushed. Additional configuration parameters supported by the destination may be included. See [Logpush destination documentation](https://developers.cloudflare.com/logs/reference/logpush-api-configuration#destination). *)
  enabled : bool prop option; [@option]
      (** Whether to enable the job. *)
  filter : string prop option; [@option]
      (** Use filters to select the events to include and/or remove from your logs. For more information, refer to [Filters](https://developers.cloudflare.com/logs/reference/logpush-api-configuration/filters/). *)
  frequency : string prop option; [@option]
      (** A higher frequency will result in logs being pushed on faster with smaller files. `low` frequency will push logs less often with larger files. Available values: `high`, `low`. Defaults to `high`. *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]
      (** The kind of logpush job to create. Available values: `edge`, `instant-logs`, ``. *)
  logpull_options : string prop option; [@option]
      (** Configuration string for the Logshare API. It specifies things like requested fields and timestamp formats. See [Logpush options documentation](https://developers.cloudflare.com/logs/logpush/logpush-configuration-api/understanding-logpush-api/#options). *)
  max_upload_bytes : float prop option; [@option]
      (** The maximum uncompressed file size of a batch of logs. Value must be between 5MB and 1GB. *)
  max_upload_interval_seconds : float prop option; [@option]
      (** The maximum interval in seconds for log batches. Value must be between 30 and 300. *)
  max_upload_records : float prop option; [@option]
      (** The maximum number of log lines per batch. Value must be between 1000 and 1,000,000. *)
  name : string prop option; [@option]
      (** The name of the logpush job to create. *)
  ownership_challenge : string prop option; [@option]
      (** Ownership challenge token to prove destination ownership, required when destination is Amazon S3, Google Cloud Storage, Microsoft Azure or Sumo Logic. See [Developer documentation](https://developers.cloudflare.com/logs/logpush/logpush-configuration-api/understanding-logpush-api/#usage). *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare Logpush jobs. For
Logpush jobs pushing to Amazon S3, Google Cloud Storage, Microsoft
Azure or Sumo Logic, this resource cannot be automatically created.
In order to have this automated, you must have:

- `cloudflare_logpush_ownership_challenge`: Configured to generate the challenge
to confirm ownership of the destination.
- Either manual inspection or another Terraform Provider to get the contents of
the `ownership_challenge_filename` value from the`cloudflare_logpush_ownership_challenge` resource.
- `cloudflare_logpush_job`: Create and manage the Logpush Job itself.
 *)

let cloudflare_logpush_job ?account_id ?enabled ?filter ?frequency
    ?id ?kind ?logpull_options ?max_upload_bytes
    ?max_upload_interval_seconds ?max_upload_records ?name
    ?ownership_challenge ?zone_id ~dataset ~destination_conf () :
    cloudflare_logpush_job =
  {
    account_id;
    dataset;
    destination_conf;
    enabled;
    filter;
    frequency;
    id;
    kind;
    logpull_options;
    max_upload_bytes;
    max_upload_interval_seconds;
    max_upload_records;
    name;
    ownership_challenge;
    zone_id;
  }

type t = {
  account_id : string prop;
  dataset : string prop;
  destination_conf : string prop;
  enabled : bool prop;
  filter : string prop;
  frequency : string prop;
  id : string prop;
  kind : string prop;
  logpull_options : string prop;
  max_upload_bytes : float prop;
  max_upload_interval_seconds : float prop;
  max_upload_records : float prop;
  name : string prop;
  ownership_challenge : string prop;
  zone_id : string prop;
}

let register ?tf_module ?account_id ?enabled ?filter ?frequency ?id
    ?kind ?logpull_options ?max_upload_bytes
    ?max_upload_interval_seconds ?max_upload_records ?name
    ?ownership_challenge ?zone_id ~dataset ~destination_conf
    __resource_id =
  let __resource_type = "cloudflare_logpush_job" in
  let __resource =
    cloudflare_logpush_job ?account_id ?enabled ?filter ?frequency
      ?id ?kind ?logpull_options ?max_upload_bytes
      ?max_upload_interval_seconds ?max_upload_records ?name
      ?ownership_challenge ?zone_id ~dataset ~destination_conf ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_logpush_job __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       dataset =
         Prop.computed __resource_type __resource_id "dataset";
       destination_conf =
         Prop.computed __resource_type __resource_id
           "destination_conf";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       filter = Prop.computed __resource_type __resource_id "filter";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       logpull_options =
         Prop.computed __resource_type __resource_id
           "logpull_options";
       max_upload_bytes =
         Prop.computed __resource_type __resource_id
           "max_upload_bytes";
       max_upload_interval_seconds =
         Prop.computed __resource_type __resource_id
           "max_upload_interval_seconds";
       max_upload_records =
         Prop.computed __resource_type __resource_id
           "max_upload_records";
       name = Prop.computed __resource_type __resource_id "name";
       ownership_challenge =
         Prop.computed __resource_type __resource_id
           "ownership_challenge";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
