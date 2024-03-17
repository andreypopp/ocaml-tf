(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_billing_account_sink__bigquery_options = {
  use_partitioned_tables : bool;
      (** Whether to use BigQuery's partition tables. By default, Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax has to be used instead. In both cases, tables are sharded based on UTC timezone. *)
}
[@@deriving yojson_of]
(** Options that affect sinks exporting data to BigQuery. *)

type google_logging_billing_account_sink__exclusions = {
  description : string option; [@option]
      (** A description of this exclusion. *)
  disabled : bool option; [@option]
      (** If set to True, then this exclusion is disabled and it does not exclude any log entries *)
  filter : string;
      (** An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries *)
  name : string;
      (** A client-assigned identifier, such as load-balancer-exclusion. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric. *)
}
[@@deriving yojson_of]
(** Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusion's filters, it will not be exported. *)

type google_logging_billing_account_sink = {
  billing_account : string;
      (** The billing account exported to the sink. *)
  description : string option; [@option]
      (** A description of this sink. The maximum length of the description is 8000 characters. *)
  destination : string;
      (** The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, or a BigQuery dataset. Examples: storage.googleapis.com/[GCS_BUCKET] bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET] pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID] The writer associated with the sink must have access to write to the above resource. *)
  disabled : bool option; [@option]
      (** If set to True, then this sink is disabled and it does not export any log entries. *)
  filter : string option; [@option]
      (** The filter to apply when exporting logs. Only log entries that match the filter are exported. *)
  id : string option; [@option]  (** id *)
  name : string;  (** The name of the logging sink. *)
  bigquery_options :
    google_logging_billing_account_sink__bigquery_options list;
  exclusions : google_logging_billing_account_sink__exclusions list;
}
[@@deriving yojson_of]
(** google_logging_billing_account_sink *)

let google_logging_billing_account_sink ?description ?disabled
    ?filter ?id ~billing_account ~destination ~name ~bigquery_options
    ~exclusions __resource_id =
  let __resource_type = "google_logging_billing_account_sink" in
  let __resource =
    {
      billing_account;
      description;
      destination;
      disabled;
      filter;
      id;
      name;
      bigquery_options;
      exclusions;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_billing_account_sink __resource);
  ()
