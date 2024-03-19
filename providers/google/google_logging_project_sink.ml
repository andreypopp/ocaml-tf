(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type google_logging_project_sink = {
  custom_writer_identity : string prop option; [@option]
      (** A service account provided by the caller that will be used to write the log entries. The format must be serviceAccount:some@email. This field can only be specified if you are routing logs to a destination outside this sink's project. If not specified, a Logging service account will automatically be generated. *)
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
  project : string prop option; [@option]
      (** The ID of the project to create the sink in. If omitted, the project associated with the provider is used. *)
  unique_writer_identity : bool prop option; [@option]
      (** Whether or not to create a unique identity associated with this sink. If false (the legacy behavior), then the writer_identity used is serviceAccount:cloud-logs@system.gserviceaccount.com. If true (default), then a unique service account is created and used for this sink. If you wish to publish logs across projects, you must set unique_writer_identity to true. *)
  bigquery_options : bigquery_options list;
  exclusions : exclusions list;
}
[@@deriving yojson_of]
(** google_logging_project_sink *)

let bigquery_options ~use_partitioned_tables () : bigquery_options =
  { use_partitioned_tables }

let exclusions ?description ?disabled ~filter ~name () : exclusions =
  { description; disabled; filter; name }

let google_logging_project_sink ?custom_writer_identity ?description
    ?disabled ?filter ?id ?project ?unique_writer_identity
    ~destination ~name ~bigquery_options ~exclusions () :
    google_logging_project_sink =
  {
    custom_writer_identity;
    description;
    destination;
    disabled;
    filter;
    id;
    name;
    project;
    unique_writer_identity;
    bigquery_options;
    exclusions;
  }

type t = {
  custom_writer_identity : string prop;
  description : string prop;
  destination : string prop;
  disabled : bool prop;
  filter : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  unique_writer_identity : bool prop;
  writer_identity : string prop;
}

let register ?tf_module ?custom_writer_identity ?description
    ?disabled ?filter ?id ?project ?unique_writer_identity
    ~destination ~name ~bigquery_options ~exclusions __resource_id =
  let __resource_type = "google_logging_project_sink" in
  let __resource =
    google_logging_project_sink ?custom_writer_identity ?description
      ?disabled ?filter ?id ?project ?unique_writer_identity
      ~destination ~name ~bigquery_options ~exclusions ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_project_sink __resource);
  let __resource_attributes =
    ({
       custom_writer_identity =
         Prop.computed __resource_type __resource_id
           "custom_writer_identity";
       description =
         Prop.computed __resource_type __resource_id "description";
       destination =
         Prop.computed __resource_type __resource_id "destination";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       filter = Prop.computed __resource_type __resource_id "filter";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       unique_writer_identity =
         Prop.computed __resource_type __resource_id
           "unique_writer_identity";
       writer_identity =
         Prop.computed __resource_type __resource_id
           "writer_identity";
     }
      : t)
  in
  __resource_attributes
