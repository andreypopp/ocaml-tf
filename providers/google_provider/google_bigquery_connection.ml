(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigquery_connection__aws__access_role = {
  iam_role_id : string prop;
      (** The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection. *)
  identity : string prop;
      (** A unique Google-owned and Google-generated identity for the Connection. This identity will be used to access the user's AWS IAM Role. *)
}
[@@deriving yojson_of]
(** Authentication using Google owned service account to assume into customer's AWS IAM Role. *)

type google_bigquery_connection__aws = {
  access_role : google_bigquery_connection__aws__access_role list;
}
[@@deriving yojson_of]
(** Connection properties specific to Amazon Web Services. *)

type google_bigquery_connection__azure = {
  application : string prop;
      (** The name of the Azure Active Directory Application. *)
  client_id : string prop;
      (** The client id of the Azure Active Directory Application. *)
  customer_tenant_id : string prop;
      (** The id of customer's directory that host the data. *)
  federated_application_client_id : string prop option; [@option]
      (** The Azure Application (client) ID where the federated credentials will be hosted. *)
  identity : string prop;
      (** A unique Google-owned and Google-generated identity for the Connection. This identity will be used to access the user's Azure Active Directory Application. *)
  object_id : string prop;
      (** The object id of the Azure Active Directory Application. *)
  redirect_uri : string prop;
      (** The URL user will be redirected to after granting consent during connection setup. *)
}
[@@deriving yojson_of]
(** Container for connection properties specific to Azure. *)

type google_bigquery_connection__cloud_resource = {
  service_account_id : string prop;
      (** The account ID of the service created for the purpose of this connection. *)
}
[@@deriving yojson_of]
(** Container for connection properties for delegation of access to GCP resources. *)

type google_bigquery_connection__cloud_spanner = {
  database : string prop;
      (** Cloud Spanner database in the form 'project/instance/database'. *)
  database_role : string prop option; [@option]
      (** Cloud Spanner database role for fine-grained access control. The Cloud Spanner admin should have provisioned the database role with appropriate permissions, such as 'SELECT' and 'INSERT'. Other users should only use roles provided by their Cloud Spanner admins. The database role name must start with a letter, and can only contain letters, numbers, and underscores. For more details, see https://cloud.google.com/spanner/docs/fgac-about. *)
  max_parallelism : float prop option; [@option]
      (** Allows setting max parallelism per query when executing on Spanner independent compute resources. If unspecified, default values of parallelism are chosen that are dependent on the Cloud Spanner instance configuration. 'useParallelism' and 'useDataBoost' must be set when setting max parallelism. *)
  use_data_boost : bool prop option; [@option]
      (** If set, the request will be executed via Spanner independent compute resources. 'use_parallelism' must be set when using data boost. *)
  use_parallelism : bool prop option; [@option]
      (** If parallelism should be used when reading from Cloud Spanner. *)
  use_serverless_analytics : bool prop option; [@option]
      (** If the serverless analytics service should be used to read data from Cloud Spanner. 'useParallelism' must be set when using serverless analytics. *)
}
[@@deriving yojson_of]
(** Connection properties specific to Cloud Spanner *)

type google_bigquery_connection__cloud_sql__credential = {
  password : string prop;  (** Password for database. *)
  username : string prop;  (** Username for database. *)
}
[@@deriving yojson_of]
(** Cloud SQL properties. *)

type google_bigquery_connection__cloud_sql = {
  database : string prop;  (** Database name. *)
  instance_id : string prop;
      (** Cloud SQL instance ID in the form project:location:instance. *)
  service_account_id : string prop;
      (** When the connection is used in the context of an operation in BigQuery, this service account will serve as the identity being used for connecting to the CloudSQL instance specified in this connection. *)
  type_ : string prop; [@key "type"]
      (** Type of the Cloud SQL database. Possible values: [DATABASE_TYPE_UNSPECIFIED, POSTGRES, MYSQL] *)
  credential : google_bigquery_connection__cloud_sql__credential list;
}
[@@deriving yojson_of]
(** Connection properties specific to the Cloud SQL. *)

type google_bigquery_connection__spark__metastore_service_config = {
  metastore_service : string prop option; [@option]
      (** Resource name of an existing Dataproc Metastore service in the form of projects/[projectId]/locations/[region]/services/[serviceId]. *)
}
[@@deriving yojson_of]
(** Dataproc Metastore Service configuration for the connection. *)

type google_bigquery_connection__spark__spark_history_server_config = {
  dataproc_cluster : string prop option; [@option]
      (** Resource name of an existing Dataproc Cluster to act as a Spark History Server for the connection if the form of projects/[projectId]/regions/[region]/clusters/[cluster_name]. *)
}
[@@deriving yojson_of]
(** Spark History Server configuration for the connection. *)

type google_bigquery_connection__spark = {
  service_account_id : string prop;
      (** The account ID of the service created for the purpose of this connection. *)
  metastore_service_config :
    google_bigquery_connection__spark__metastore_service_config list;
  spark_history_server_config :
    google_bigquery_connection__spark__spark_history_server_config
    list;
}
[@@deriving yojson_of]
(** Container for connection properties to execute stored procedures for Apache Spark. resources. *)

type google_bigquery_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigquery_connection__timeouts *)

type google_bigquery_connection = {
  connection_id : string prop option; [@option]
      (** Optional connection id that should be assigned to the created connection. *)
  description : string prop option; [@option]
      (** A descriptive description for the connection *)
  friendly_name : string prop option; [@option]
      (** A descriptive name for the connection *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The geographic location where the connection should reside.
Cloud SQL instance must be in the same location as the connection
with following exceptions: Cloud SQL us-central1 maps to BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
Examples: US, EU, asia-northeast1, us-central1, europe-west1.
Spanner Connections same as spanner region
AWS allowed regions are aws-us-east-1
Azure allowed regions are azure-eastus2 *)
  project : string prop option; [@option]  (** project *)
  aws : google_bigquery_connection__aws list;
  azure : google_bigquery_connection__azure list;
  cloud_resource : google_bigquery_connection__cloud_resource list;
  cloud_spanner : google_bigquery_connection__cloud_spanner list;
  cloud_sql : google_bigquery_connection__cloud_sql list;
  spark : google_bigquery_connection__spark list;
  timeouts : google_bigquery_connection__timeouts option;
}
[@@deriving yojson_of]
(** google_bigquery_connection *)

let google_bigquery_connection ?connection_id ?description
    ?friendly_name ?id ?location ?project ?timeouts ~aws ~azure
    ~cloud_resource ~cloud_spanner ~cloud_sql ~spark __resource_id =
  let __resource_type = "google_bigquery_connection" in
  let __resource =
    {
      connection_id;
      description;
      friendly_name;
      id;
      location;
      project;
      aws;
      azure;
      cloud_resource;
      cloud_spanner;
      cloud_sql;
      spark;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigquery_connection __resource);
  ()
