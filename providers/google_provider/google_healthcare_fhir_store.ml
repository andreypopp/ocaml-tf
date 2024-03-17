(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_fhir_store__notification_config = {
  pubsub_topic : string prop;
      (** The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_healthcare_fhir_store__stream_configs__bigquery_destination__schema_config__last_updated_partition_config = {
  expiration_ms : string prop option; [@option]
      (** Number of milliseconds for which to keep the storage for a partition. *)
  type_ : string prop; [@key "type"]
      (** Type of partitioning. Possible values: [PARTITION_TYPE_UNSPECIFIED, HOUR, DAY, MONTH, YEAR] *)
}
[@@deriving yojson_of]
(** The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column. *)

type google_healthcare_fhir_store__stream_configs__bigquery_destination__schema_config = {
  recursive_structure_depth : float prop;
      (** The depth for all recursive structures in the output analytics schema. For example, concept in the CodeSystem
resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called
concept.concept but not concept.concept.concept. If not specified or set to 0, the server will use the default
value 2. The maximum depth allowed is 5. *)
  schema_type : string prop option; [@option]
      (** Specifies the output schema type.
 * ANALYTICS: Analytics schema defined by the FHIR community.
  See https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md.
 * ANALYTICS_V2: Analytics V2, similar to schema defined by the FHIR community, with added support for extensions with one or more occurrences and contained resources in stringified JSON.
 * LOSSLESS: A data-driven schema generated from the fields present in the FHIR data being exported, with no additional simplification. Default value: ANALYTICS Possible values: [ANALYTICS, ANALYTICS_V2, LOSSLESS] *)
  last_updated_partition_config :
    google_healthcare_fhir_store__stream_configs__bigquery_destination__schema_config__last_updated_partition_config
    list;
}
[@@deriving yojson_of]
(** The configuration for the exported BigQuery schema. *)

type google_healthcare_fhir_store__stream_configs__bigquery_destination = {
  dataset_uri : string prop;
      (** BigQuery URI to a dataset, up to 2000 characters long, in the format bq://projectId.bqDatasetId *)
  schema_config :
    google_healthcare_fhir_store__stream_configs__bigquery_destination__schema_config
    list;
}
[@@deriving yojson_of]
(** The destination BigQuery structure that contains both the dataset location and corresponding schema config.
The output is organized in one table per resource type. The server reuses the existing tables (if any) that
are named after the resource types, e.g. Patient, Observation. When there is no existing table for a given
resource type, the server attempts to create one.
See the [streaming config reference](https://cloud.google.com/healthcare/docs/reference/rest/v1beta1/projects.locations.datasets.fhirStores#streamconfig) for more details. *)

type google_healthcare_fhir_store__stream_configs = {
  resource_types : string prop list option; [@option]
      (** Supply a FHIR resource type (such as Patient or Observation). See
https://www.hl7.org/fhir/valueset-resource-types.html for a list of all FHIR resource types. The server treats
an empty list as an intent to stream all the supported resource types in this FHIR store. *)
  bigquery_destination :
    google_healthcare_fhir_store__stream_configs__bigquery_destination
    list;
}
[@@deriving yojson_of]
(** A list of streaming configs that configure the destinations of streaming export for every resource mutation in
this FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next
resource mutation is streamed to the new location in addition to the existing ones. When a location is removed
from the list, the server stops streaming to that location. Before adding a new config, you must add the required
bigquery.dataEditor role to your project's Cloud Healthcare Service Agent service account. Some lag (typically on
the order of dozens of seconds) is expected before the results show up in the streaming destination. *)

type google_healthcare_fhir_store__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_healthcare_fhir_store__timeouts *)

type google_healthcare_fhir_store = {
  complex_data_type_reference_parsing : string prop option; [@option]
      (** Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources. Possible values: [COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED, DISABLED, ENABLED] *)
  dataset : string prop;
      (** Identifies the dataset addressed by this request. Must be in the format
'projects/{project}/locations/{location}/datasets/{dataset}' *)
  default_search_handling_strict : bool prop option; [@option]
      (** If true, overrides the default search behavior for this FHIR store to handling=strict which returns an error for unrecognized search parameters.
If false, uses the FHIR specification default handling=lenient which ignores unrecognized search parameters.
The handling can always be changed from the default on an individual API call by setting the HTTP header Prefer: handling=strict or Prefer: handling=lenient. *)
  disable_referential_integrity : bool prop option; [@option]
      (** Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store
creation. The default value is false, meaning that the API will enforce referential integrity and fail the
requests that will result in inconsistent state in the FHIR store. When this field is set to true, the API
will skip referential integrity check. Consequently, operations that rely on references, such as
Patient.get$everything, will not return all the results if broken references exist.

** Changing this property may recreate the FHIR store (removing all data) ** *)
  disable_resource_versioning : bool prop option; [@option]
      (** Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation
of FHIR store. If set to false, which is the default behavior, all write operations will cause historical
versions to be recorded automatically. The historical versions can be fetched through the history APIs, but
cannot be updated. If set to true, no historical versions will be kept. The server will send back errors for
attempts to read the historical versions.

** Changing this property may recreate the FHIR store (removing all data) ** *)
  enable_history_import : bool prop option; [@option]
      (** Whether to allow the bulk import API to accept history bundles and directly insert historical resource
versions into the FHIR store. Importing resource histories creates resource interactions that appear to have
occurred in the past, which clients may not want to allow. If set to false, history bundles within an import
will fail with an error.

** Changing this property may recreate the FHIR store (removing all data) **

** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store ** *)
  enable_update_create : bool prop option; [@option]
      (** Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update
operation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through
the Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit
logs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient
identifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub
notifications. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-supplied key-value pairs used to organize FHIR stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** The resource name for the FhirStore.

** Changing this property may recreate the FHIR store (removing all data) ** *)
  version : string prop;
      (** The FHIR specification version. Possible values: [DSTU2, STU3, R4] *)
  notification_config :
    google_healthcare_fhir_store__notification_config list;
  stream_configs : google_healthcare_fhir_store__stream_configs list;
  timeouts : google_healthcare_fhir_store__timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_fhir_store *)

let google_healthcare_fhir_store ?complex_data_type_reference_parsing
    ?default_search_handling_strict ?disable_referential_integrity
    ?disable_resource_versioning ?enable_history_import
    ?enable_update_create ?id ?labels ?timeouts ~dataset ~name
    ~version ~notification_config ~stream_configs __resource_id =
  let __resource_type = "google_healthcare_fhir_store" in
  let __resource =
    {
      complex_data_type_reference_parsing;
      dataset;
      default_search_handling_strict;
      disable_referential_integrity;
      disable_resource_versioning;
      enable_history_import;
      enable_update_create;
      id;
      labels;
      name;
      version;
      notification_config;
      stream_configs;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_fhir_store __resource);
  ()
