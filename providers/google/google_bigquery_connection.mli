(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws__access_role

val aws__access_role :
  iam_role_id:string prop -> unit -> aws__access_role

type aws

val aws : access_role:aws__access_role list -> unit -> aws

type azure

val azure :
  ?federated_application_client_id:string prop ->
  customer_tenant_id:string prop ->
  unit ->
  azure

type cloud_resource

val cloud_resource : unit -> cloud_resource

type cloud_spanner

val cloud_spanner :
  ?database_role:string prop ->
  ?max_parallelism:float prop ->
  ?use_data_boost:bool prop ->
  ?use_parallelism:bool prop ->
  ?use_serverless_analytics:bool prop ->
  database:string prop ->
  unit ->
  cloud_spanner

type cloud_sql__credential

val cloud_sql__credential :
  password:string prop ->
  username:string prop ->
  unit ->
  cloud_sql__credential

type cloud_sql

val cloud_sql :
  database:string prop ->
  instance_id:string prop ->
  type_:string prop ->
  credential:cloud_sql__credential list ->
  unit ->
  cloud_sql

type spark__metastore_service_config

val spark__metastore_service_config :
  ?metastore_service:string prop ->
  unit ->
  spark__metastore_service_config

type spark__spark_history_server_config

val spark__spark_history_server_config :
  ?dataproc_cluster:string prop ->
  unit ->
  spark__spark_history_server_config

type spark

val spark :
  metastore_service_config:spark__metastore_service_config list ->
  spark_history_server_config:spark__spark_history_server_config list ->
  unit ->
  spark

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigquery_connection

val google_bigquery_connection :
  ?connection_id:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  aws:aws list ->
  azure:azure list ->
  cloud_resource:cloud_resource list ->
  cloud_spanner:cloud_spanner list ->
  cloud_sql:cloud_sql list ->
  spark:spark list ->
  unit ->
  google_bigquery_connection

val yojson_of_google_bigquery_connection :
  google_bigquery_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  connection_id : string prop;
  description : string prop;
  friendly_name : string prop;
  has_credential : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?connection_id:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  aws:aws list ->
  azure:azure list ->
  cloud_resource:cloud_resource list ->
  cloud_spanner:cloud_spanner list ->
  cloud_sql:cloud_sql list ->
  spark:spark list ->
  string ->
  t
