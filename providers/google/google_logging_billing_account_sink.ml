(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bigquery_options = {
  use_partitioned_tables : bool prop;
      (** Whether to use BigQuery's partition tables. By default, Logging creates dated tables based on the log entries' timestamps, e.g. syslog_20170523. With partitioned tables the date suffix is no longer present and special query syntax has to be used instead. In both cases, tables are sharded based on UTC timezone. *)
}
[@@deriving yojson_of]
(** Options that affect sinks exporting data to BigQuery. *)

type exclusions = {
  description : string prop option; [@option]
      (** A description of this exclusion. *)
  disabled : bool prop option; [@option]
      (** If set to True, then this exclusion is disabled and it does not exclude any log entries *)
  filter : string prop;
      (** An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries *)
  name : string prop;
      (** A client-assigned identifier, such as load-balancer-exclusion. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric. *)
}
[@@deriving yojson_of]
(** Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both filter and one of exclusion's filters, it will not be exported. *)

type google_logging_billing_account_sink = {
  billing_account : string prop;
      (** The billing account exported to the sink. *)
  description : string prop option; [@option]
      (** A description of this sink. The maximum length of the description is 8000 characters. *)
  destination : string prop;
      (** The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, or a BigQuery dataset. Examples: storage.googleapis.com/[GCS_BUCKET] bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET] pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID] The writer associated with the sink must have access to write to the above resource. *)
  disabled : bool prop option; [@option]
      (** If set to True, then this sink is disabled and it does not export any log entries. *)
  filter : string prop option; [@option]
      (** The filter to apply when exporting logs. Only log entries that match the filter are exported. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the logging sink. *)
  bigquery_options : bigquery_options list;
  exclusions : exclusions list;
}
[@@deriving yojson_of]
(** google_logging_billing_account_sink *)

let bigquery_options ~use_partitioned_tables () : bigquery_options =
  { use_partitioned_tables }

let exclusions ?description ?disabled ~filter ~name () : exclusions =
  { description; disabled; filter; name }

let google_logging_billing_account_sink ?description ?disabled
    ?filter ?id ~billing_account ~destination ~name ~bigquery_options
    ~exclusions () : google_logging_billing_account_sink =
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

type t = {
  billing_account : string prop;
  description : string prop;
  destination : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  writer_identity : string prop;
}

let make ?description ?disabled ?filter ?id ~billing_account
    ~destination ~name ~bigquery_options ~exclusions __id =
  let __type = "google_logging_billing_account_sink" in
  let __attrs =
    ({
       billing_account = Prop.computed __type __id "billing_account";
       description = Prop.computed __type __id "description";
       destination = Prop.computed __type __id "destination";
       disabled = Prop.computed __type __id "disabled";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       writer_identity = Prop.computed __type __id "writer_identity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_billing_account_sink
        (google_logging_billing_account_sink ?description ?disabled
           ?filter ?id ~billing_account ~destination ~name
           ~bigquery_options ~exclusions ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?filter ?id
    ~billing_account ~destination ~name ~bigquery_options ~exclusions
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?filter ?id ~billing_account
      ~destination ~name ~bigquery_options ~exclusions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
