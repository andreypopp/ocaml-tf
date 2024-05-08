(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type batching = {
  enable_batching : bool prop option; [@option]
  send_after : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : batching) -> ()

let yojson_of_batching =
  (function
   | {
       enable_batching = v_enable_batching;
       send_after = v_send_after;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_send_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "send_after", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_batching with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_batching", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : batching -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_batching

[@@@deriving.end]

type google = {
  access_approval_custom_endpoint : string prop option; [@option]
  access_context_manager_custom_endpoint : string prop option;
      [@option]
  access_token : string prop option; [@option]
  active_directory_custom_endpoint : string prop option; [@option]
  add_terraform_attribution_label : bool prop option; [@option]
  alloydb_custom_endpoint : string prop option; [@option]
  apigee_custom_endpoint : string prop option; [@option]
  apikeys_custom_endpoint : string prop option; [@option]
  app_engine_custom_endpoint : string prop option; [@option]
  artifact_registry_custom_endpoint : string prop option; [@option]
  assured_workloads_custom_endpoint : string prop option; [@option]
  beyondcorp_custom_endpoint : string prop option; [@option]
  big_query_custom_endpoint : string prop option; [@option]
  biglake_custom_endpoint : string prop option; [@option]
  bigquery_analytics_hub_custom_endpoint : string prop option;
      [@option]
  bigquery_connection_custom_endpoint : string prop option; [@option]
  bigquery_data_transfer_custom_endpoint : string prop option;
      [@option]
  bigquery_datapolicy_custom_endpoint : string prop option; [@option]
  bigquery_reservation_custom_endpoint : string prop option;
      [@option]
  bigtable_custom_endpoint : string prop option; [@option]
  billing_custom_endpoint : string prop option; [@option]
  billing_project : string prop option; [@option]
  binary_authorization_custom_endpoint : string prop option;
      [@option]
  blockchain_node_engine_custom_endpoint : string prop option;
      [@option]
  certificate_manager_custom_endpoint : string prop option; [@option]
  cloud_asset_custom_endpoint : string prop option; [@option]
  cloud_billing_custom_endpoint : string prop option; [@option]
  cloud_build_custom_endpoint : string prop option; [@option]
  cloud_build_worker_pool_custom_endpoint : string prop option;
      [@option]
  cloud_functions_custom_endpoint : string prop option; [@option]
  cloud_identity_custom_endpoint : string prop option; [@option]
  cloud_ids_custom_endpoint : string prop option; [@option]
  cloud_resource_manager_custom_endpoint : string prop option;
      [@option]
  cloud_run_custom_endpoint : string prop option; [@option]
  cloud_run_v2_custom_endpoint : string prop option; [@option]
  cloud_scheduler_custom_endpoint : string prop option; [@option]
  cloud_tasks_custom_endpoint : string prop option; [@option]
  cloudbuildv2_custom_endpoint : string prop option; [@option]
  clouddeploy_custom_endpoint : string prop option; [@option]
  clouddomains_custom_endpoint : string prop option; [@option]
  cloudfunctions2_custom_endpoint : string prop option; [@option]
  composer_custom_endpoint : string prop option; [@option]
  compute_custom_endpoint : string prop option; [@option]
  container_analysis_custom_endpoint : string prop option; [@option]
  container_attached_custom_endpoint : string prop option; [@option]
  container_aws_custom_endpoint : string prop option; [@option]
  container_azure_custom_endpoint : string prop option; [@option]
  container_custom_endpoint : string prop option; [@option]
  core_billing_custom_endpoint : string prop option; [@option]
  credentials : string prop option; [@option]
  data_catalog_custom_endpoint : string prop option; [@option]
  data_fusion_custom_endpoint : string prop option; [@option]
  data_loss_prevention_custom_endpoint : string prop option;
      [@option]
  data_pipeline_custom_endpoint : string prop option; [@option]
  database_migration_service_custom_endpoint : string prop option;
      [@option]
  dataflow_custom_endpoint : string prop option; [@option]
  dataplex_custom_endpoint : string prop option; [@option]
  dataproc_custom_endpoint : string prop option; [@option]
  dataproc_metastore_custom_endpoint : string prop option; [@option]
  datastore_custom_endpoint : string prop option; [@option]
  datastream_custom_endpoint : string prop option; [@option]
  default_labels : (string * string prop) list option; [@option]
  deployment_manager_custom_endpoint : string prop option; [@option]
  dialogflow_custom_endpoint : string prop option; [@option]
  dialogflow_cx_custom_endpoint : string prop option; [@option]
  discovery_engine_custom_endpoint : string prop option; [@option]
  dns_custom_endpoint : string prop option; [@option]
  document_ai_custom_endpoint : string prop option; [@option]
  document_ai_warehouse_custom_endpoint : string prop option;
      [@option]
  edgecontainer_custom_endpoint : string prop option; [@option]
  edgenetwork_custom_endpoint : string prop option; [@option]
  essential_contacts_custom_endpoint : string prop option; [@option]
  eventarc_custom_endpoint : string prop option; [@option]
  filestore_custom_endpoint : string prop option; [@option]
  firebase_app_check_custom_endpoint : string prop option; [@option]
  firebaserules_custom_endpoint : string prop option; [@option]
  firestore_custom_endpoint : string prop option; [@option]
  gke_backup_custom_endpoint : string prop option; [@option]
  gke_hub2_custom_endpoint : string prop option; [@option]
  gke_hub_custom_endpoint : string prop option; [@option]
  gkehub_feature_custom_endpoint : string prop option; [@option]
  gkeonprem_custom_endpoint : string prop option; [@option]
  healthcare_custom_endpoint : string prop option; [@option]
  iam2_custom_endpoint : string prop option; [@option]
  iam_beta_custom_endpoint : string prop option; [@option]
  iam_credentials_custom_endpoint : string prop option; [@option]
  iam_custom_endpoint : string prop option; [@option]
  iam_workforce_pool_custom_endpoint : string prop option; [@option]
  iap_custom_endpoint : string prop option; [@option]
  identity_platform_custom_endpoint : string prop option; [@option]
  impersonate_service_account : string prop option; [@option]
  impersonate_service_account_delegates : string prop list option;
      [@option]
  integration_connectors_custom_endpoint : string prop option;
      [@option]
  kms_custom_endpoint : string prop option; [@option]
  logging_custom_endpoint : string prop option; [@option]
  looker_custom_endpoint : string prop option; [@option]
  memcache_custom_endpoint : string prop option; [@option]
  migration_center_custom_endpoint : string prop option; [@option]
  ml_engine_custom_endpoint : string prop option; [@option]
  monitoring_custom_endpoint : string prop option; [@option]
  netapp_custom_endpoint : string prop option; [@option]
  network_connectivity_custom_endpoint : string prop option;
      [@option]
  network_management_custom_endpoint : string prop option; [@option]
  network_security_custom_endpoint : string prop option; [@option]
  network_services_custom_endpoint : string prop option; [@option]
  notebooks_custom_endpoint : string prop option; [@option]
  org_policy_custom_endpoint : string prop option; [@option]
  os_config_custom_endpoint : string prop option; [@option]
  os_login_custom_endpoint : string prop option; [@option]
  privateca_custom_endpoint : string prop option; [@option]
  project : string prop option; [@option]
  public_ca_custom_endpoint : string prop option; [@option]
  pubsub_custom_endpoint : string prop option; [@option]
  pubsub_lite_custom_endpoint : string prop option; [@option]
  recaptcha_enterprise_custom_endpoint : string prop option;
      [@option]
  redis_custom_endpoint : string prop option; [@option]
  region : string prop option; [@option]
  request_reason : string prop option; [@option]
  request_timeout : string prop option; [@option]
  resource_manager_custom_endpoint : string prop option; [@option]
  resource_manager_v3_custom_endpoint : string prop option; [@option]
  scopes : string prop list option; [@option]
  secret_manager_custom_endpoint : string prop option; [@option]
  secure_source_manager_custom_endpoint : string prop option;
      [@option]
  security_center_custom_endpoint : string prop option; [@option]
  securityposture_custom_endpoint : string prop option; [@option]
  service_management_custom_endpoint : string prop option; [@option]
  service_networking_custom_endpoint : string prop option; [@option]
  service_usage_custom_endpoint : string prop option; [@option]
  source_repo_custom_endpoint : string prop option; [@option]
  spanner_custom_endpoint : string prop option; [@option]
  sql_custom_endpoint : string prop option; [@option]
  storage_custom_endpoint : string prop option; [@option]
  storage_insights_custom_endpoint : string prop option; [@option]
  storage_transfer_custom_endpoint : string prop option; [@option]
  tags_custom_endpoint : string prop option; [@option]
  tags_location_custom_endpoint : string prop option; [@option]
  terraform_attribution_label_addition_strategy : string prop option;
      [@option]
  tpu_custom_endpoint : string prop option; [@option]
  universe_domain : string prop option; [@option]
  user_project_override : bool prop option; [@option]
  vertex_ai_custom_endpoint : string prop option; [@option]
  vmwareengine_custom_endpoint : string prop option; [@option]
  vpc_access_custom_endpoint : string prop option; [@option]
  workbench_custom_endpoint : string prop option; [@option]
  workflows_custom_endpoint : string prop option; [@option]
  zone : string prop option; [@option]
  batching : batching list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google) -> ()

let yojson_of_google =
  (function
   | {
       access_approval_custom_endpoint =
         v_access_approval_custom_endpoint;
       access_context_manager_custom_endpoint =
         v_access_context_manager_custom_endpoint;
       access_token = v_access_token;
       active_directory_custom_endpoint =
         v_active_directory_custom_endpoint;
       add_terraform_attribution_label =
         v_add_terraform_attribution_label;
       alloydb_custom_endpoint = v_alloydb_custom_endpoint;
       apigee_custom_endpoint = v_apigee_custom_endpoint;
       apikeys_custom_endpoint = v_apikeys_custom_endpoint;
       app_engine_custom_endpoint = v_app_engine_custom_endpoint;
       artifact_registry_custom_endpoint =
         v_artifact_registry_custom_endpoint;
       assured_workloads_custom_endpoint =
         v_assured_workloads_custom_endpoint;
       beyondcorp_custom_endpoint = v_beyondcorp_custom_endpoint;
       big_query_custom_endpoint = v_big_query_custom_endpoint;
       biglake_custom_endpoint = v_biglake_custom_endpoint;
       bigquery_analytics_hub_custom_endpoint =
         v_bigquery_analytics_hub_custom_endpoint;
       bigquery_connection_custom_endpoint =
         v_bigquery_connection_custom_endpoint;
       bigquery_data_transfer_custom_endpoint =
         v_bigquery_data_transfer_custom_endpoint;
       bigquery_datapolicy_custom_endpoint =
         v_bigquery_datapolicy_custom_endpoint;
       bigquery_reservation_custom_endpoint =
         v_bigquery_reservation_custom_endpoint;
       bigtable_custom_endpoint = v_bigtable_custom_endpoint;
       billing_custom_endpoint = v_billing_custom_endpoint;
       billing_project = v_billing_project;
       binary_authorization_custom_endpoint =
         v_binary_authorization_custom_endpoint;
       blockchain_node_engine_custom_endpoint =
         v_blockchain_node_engine_custom_endpoint;
       certificate_manager_custom_endpoint =
         v_certificate_manager_custom_endpoint;
       cloud_asset_custom_endpoint = v_cloud_asset_custom_endpoint;
       cloud_billing_custom_endpoint =
         v_cloud_billing_custom_endpoint;
       cloud_build_custom_endpoint = v_cloud_build_custom_endpoint;
       cloud_build_worker_pool_custom_endpoint =
         v_cloud_build_worker_pool_custom_endpoint;
       cloud_functions_custom_endpoint =
         v_cloud_functions_custom_endpoint;
       cloud_identity_custom_endpoint =
         v_cloud_identity_custom_endpoint;
       cloud_ids_custom_endpoint = v_cloud_ids_custom_endpoint;
       cloud_resource_manager_custom_endpoint =
         v_cloud_resource_manager_custom_endpoint;
       cloud_run_custom_endpoint = v_cloud_run_custom_endpoint;
       cloud_run_v2_custom_endpoint = v_cloud_run_v2_custom_endpoint;
       cloud_scheduler_custom_endpoint =
         v_cloud_scheduler_custom_endpoint;
       cloud_tasks_custom_endpoint = v_cloud_tasks_custom_endpoint;
       cloudbuildv2_custom_endpoint = v_cloudbuildv2_custom_endpoint;
       clouddeploy_custom_endpoint = v_clouddeploy_custom_endpoint;
       clouddomains_custom_endpoint = v_clouddomains_custom_endpoint;
       cloudfunctions2_custom_endpoint =
         v_cloudfunctions2_custom_endpoint;
       composer_custom_endpoint = v_composer_custom_endpoint;
       compute_custom_endpoint = v_compute_custom_endpoint;
       container_analysis_custom_endpoint =
         v_container_analysis_custom_endpoint;
       container_attached_custom_endpoint =
         v_container_attached_custom_endpoint;
       container_aws_custom_endpoint =
         v_container_aws_custom_endpoint;
       container_azure_custom_endpoint =
         v_container_azure_custom_endpoint;
       container_custom_endpoint = v_container_custom_endpoint;
       core_billing_custom_endpoint = v_core_billing_custom_endpoint;
       credentials = v_credentials;
       data_catalog_custom_endpoint = v_data_catalog_custom_endpoint;
       data_fusion_custom_endpoint = v_data_fusion_custom_endpoint;
       data_loss_prevention_custom_endpoint =
         v_data_loss_prevention_custom_endpoint;
       data_pipeline_custom_endpoint =
         v_data_pipeline_custom_endpoint;
       database_migration_service_custom_endpoint =
         v_database_migration_service_custom_endpoint;
       dataflow_custom_endpoint = v_dataflow_custom_endpoint;
       dataplex_custom_endpoint = v_dataplex_custom_endpoint;
       dataproc_custom_endpoint = v_dataproc_custom_endpoint;
       dataproc_metastore_custom_endpoint =
         v_dataproc_metastore_custom_endpoint;
       datastore_custom_endpoint = v_datastore_custom_endpoint;
       datastream_custom_endpoint = v_datastream_custom_endpoint;
       default_labels = v_default_labels;
       deployment_manager_custom_endpoint =
         v_deployment_manager_custom_endpoint;
       dialogflow_custom_endpoint = v_dialogflow_custom_endpoint;
       dialogflow_cx_custom_endpoint =
         v_dialogflow_cx_custom_endpoint;
       discovery_engine_custom_endpoint =
         v_discovery_engine_custom_endpoint;
       dns_custom_endpoint = v_dns_custom_endpoint;
       document_ai_custom_endpoint = v_document_ai_custom_endpoint;
       document_ai_warehouse_custom_endpoint =
         v_document_ai_warehouse_custom_endpoint;
       edgecontainer_custom_endpoint =
         v_edgecontainer_custom_endpoint;
       edgenetwork_custom_endpoint = v_edgenetwork_custom_endpoint;
       essential_contacts_custom_endpoint =
         v_essential_contacts_custom_endpoint;
       eventarc_custom_endpoint = v_eventarc_custom_endpoint;
       filestore_custom_endpoint = v_filestore_custom_endpoint;
       firebase_app_check_custom_endpoint =
         v_firebase_app_check_custom_endpoint;
       firebaserules_custom_endpoint =
         v_firebaserules_custom_endpoint;
       firestore_custom_endpoint = v_firestore_custom_endpoint;
       gke_backup_custom_endpoint = v_gke_backup_custom_endpoint;
       gke_hub2_custom_endpoint = v_gke_hub2_custom_endpoint;
       gke_hub_custom_endpoint = v_gke_hub_custom_endpoint;
       gkehub_feature_custom_endpoint =
         v_gkehub_feature_custom_endpoint;
       gkeonprem_custom_endpoint = v_gkeonprem_custom_endpoint;
       healthcare_custom_endpoint = v_healthcare_custom_endpoint;
       iam2_custom_endpoint = v_iam2_custom_endpoint;
       iam_beta_custom_endpoint = v_iam_beta_custom_endpoint;
       iam_credentials_custom_endpoint =
         v_iam_credentials_custom_endpoint;
       iam_custom_endpoint = v_iam_custom_endpoint;
       iam_workforce_pool_custom_endpoint =
         v_iam_workforce_pool_custom_endpoint;
       iap_custom_endpoint = v_iap_custom_endpoint;
       identity_platform_custom_endpoint =
         v_identity_platform_custom_endpoint;
       impersonate_service_account = v_impersonate_service_account;
       impersonate_service_account_delegates =
         v_impersonate_service_account_delegates;
       integration_connectors_custom_endpoint =
         v_integration_connectors_custom_endpoint;
       kms_custom_endpoint = v_kms_custom_endpoint;
       logging_custom_endpoint = v_logging_custom_endpoint;
       looker_custom_endpoint = v_looker_custom_endpoint;
       memcache_custom_endpoint = v_memcache_custom_endpoint;
       migration_center_custom_endpoint =
         v_migration_center_custom_endpoint;
       ml_engine_custom_endpoint = v_ml_engine_custom_endpoint;
       monitoring_custom_endpoint = v_monitoring_custom_endpoint;
       netapp_custom_endpoint = v_netapp_custom_endpoint;
       network_connectivity_custom_endpoint =
         v_network_connectivity_custom_endpoint;
       network_management_custom_endpoint =
         v_network_management_custom_endpoint;
       network_security_custom_endpoint =
         v_network_security_custom_endpoint;
       network_services_custom_endpoint =
         v_network_services_custom_endpoint;
       notebooks_custom_endpoint = v_notebooks_custom_endpoint;
       org_policy_custom_endpoint = v_org_policy_custom_endpoint;
       os_config_custom_endpoint = v_os_config_custom_endpoint;
       os_login_custom_endpoint = v_os_login_custom_endpoint;
       privateca_custom_endpoint = v_privateca_custom_endpoint;
       project = v_project;
       public_ca_custom_endpoint = v_public_ca_custom_endpoint;
       pubsub_custom_endpoint = v_pubsub_custom_endpoint;
       pubsub_lite_custom_endpoint = v_pubsub_lite_custom_endpoint;
       recaptcha_enterprise_custom_endpoint =
         v_recaptcha_enterprise_custom_endpoint;
       redis_custom_endpoint = v_redis_custom_endpoint;
       region = v_region;
       request_reason = v_request_reason;
       request_timeout = v_request_timeout;
       resource_manager_custom_endpoint =
         v_resource_manager_custom_endpoint;
       resource_manager_v3_custom_endpoint =
         v_resource_manager_v3_custom_endpoint;
       scopes = v_scopes;
       secret_manager_custom_endpoint =
         v_secret_manager_custom_endpoint;
       secure_source_manager_custom_endpoint =
         v_secure_source_manager_custom_endpoint;
       security_center_custom_endpoint =
         v_security_center_custom_endpoint;
       securityposture_custom_endpoint =
         v_securityposture_custom_endpoint;
       service_management_custom_endpoint =
         v_service_management_custom_endpoint;
       service_networking_custom_endpoint =
         v_service_networking_custom_endpoint;
       service_usage_custom_endpoint =
         v_service_usage_custom_endpoint;
       source_repo_custom_endpoint = v_source_repo_custom_endpoint;
       spanner_custom_endpoint = v_spanner_custom_endpoint;
       sql_custom_endpoint = v_sql_custom_endpoint;
       storage_custom_endpoint = v_storage_custom_endpoint;
       storage_insights_custom_endpoint =
         v_storage_insights_custom_endpoint;
       storage_transfer_custom_endpoint =
         v_storage_transfer_custom_endpoint;
       tags_custom_endpoint = v_tags_custom_endpoint;
       tags_location_custom_endpoint =
         v_tags_location_custom_endpoint;
       terraform_attribution_label_addition_strategy =
         v_terraform_attribution_label_addition_strategy;
       tpu_custom_endpoint = v_tpu_custom_endpoint;
       universe_domain = v_universe_domain;
       user_project_override = v_user_project_override;
       vertex_ai_custom_endpoint = v_vertex_ai_custom_endpoint;
       vmwareengine_custom_endpoint = v_vmwareengine_custom_endpoint;
       vpc_access_custom_endpoint = v_vpc_access_custom_endpoint;
       workbench_custom_endpoint = v_workbench_custom_endpoint;
       workflows_custom_endpoint = v_workflows_custom_endpoint;
       zone = v_zone;
       batching = v_batching;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_batching then bnds
         else
           let arg =
             (yojson_of_list yojson_of_batching) v_batching
           in
           let bnd = "batching", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workflows_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workflows_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workbench_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workbench_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_access_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_access_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vmwareengine_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vmwareengine_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vertex_ai_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vertex_ai_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_project_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_project_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_universe_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "universe_domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpu_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpu_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_terraform_attribution_label_addition_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "terraform_attribution_label_addition_strategy", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tags_location_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tags_location_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tags_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_transfer_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_transfer_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_insights_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_insights_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sql_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sql_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spanner_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spanner_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_repo_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_repo_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_usage_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_usage_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_networking_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_networking_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_management_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_management_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_securityposture_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "securityposture_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_center_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_center_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secure_source_manager_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "secure_source_manager_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_secret_manager_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_manager_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_manager_v3_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_manager_v3_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_manager_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_manager_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_reason with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_reason", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redis_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redis_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recaptcha_enterprise_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recaptcha_enterprise_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pubsub_lite_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pubsub_lite_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pubsub_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pubsub_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ca_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ca_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_privateca_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "privateca_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_login_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_login_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_config_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_config_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_org_policy_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "org_policy_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notebooks_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notebooks_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_services_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_services_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_security_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_security_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_management_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_management_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_connectivity_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_connectivity_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_netapp_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "netapp_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monitoring_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "monitoring_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ml_engine_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ml_engine_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_migration_center_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "migration_center_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memcache_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memcache_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_looker_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "looker_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logging_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_integration_connectors_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "integration_connectors_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_impersonate_service_account_delegates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "impersonate_service_account_delegates", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_impersonate_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "impersonate_service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_platform_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_platform_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iap_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iap_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_workforce_pool_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_workforce_pool_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_credentials_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_credentials_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_beta_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_beta_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam2_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam2_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthcare_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "healthcare_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gkeonprem_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gkeonprem_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gkehub_feature_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gkehub_feature_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gke_hub_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gke_hub_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gke_hub2_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gke_hub2_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gke_backup_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gke_backup_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_firestore_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firestore_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_firebaserules_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firebaserules_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_firebase_app_check_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firebase_app_check_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filestore_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filestore_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eventarc_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eventarc_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_essential_contacts_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "essential_contacts_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edgenetwork_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edgenetwork_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edgecontainer_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edgecontainer_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_document_ai_warehouse_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "document_ai_warehouse_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_document_ai_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_ai_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_discovery_engine_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "discovery_engine_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dialogflow_cx_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dialogflow_cx_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dialogflow_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dialogflow_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployment_manager_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_manager_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "default_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datastream_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datastream_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datastore_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datastore_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataproc_metastore_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataproc_metastore_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataproc_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataproc_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataplex_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataplex_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataflow_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataflow_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database_migration_service_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "database_migration_service_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_data_pipeline_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_pipeline_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_loss_prevention_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_loss_prevention_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_fusion_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_fusion_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_catalog_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_catalog_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_core_billing_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "core_billing_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_azure_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_azure_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_aws_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_aws_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_attached_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_attached_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_analysis_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_analysis_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_composer_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "composer_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudfunctions2_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudfunctions2_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_clouddomains_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "clouddomains_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_clouddeploy_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "clouddeploy_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudbuildv2_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudbuildv2_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_tasks_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_tasks_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_scheduler_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_scheduler_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_run_v2_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_run_v2_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_run_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_run_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_resource_manager_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "cloud_resource_manager_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_ids_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_ids_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_identity_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_identity_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_functions_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_functions_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_build_worker_pool_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "cloud_build_worker_pool_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_build_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_build_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_billing_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_billing_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloud_asset_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloud_asset_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_manager_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_manager_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blockchain_node_engine_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "blockchain_node_engine_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_binary_authorization_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "binary_authorization_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_billing_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_billing_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bigtable_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bigtable_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bigquery_reservation_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bigquery_reservation_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bigquery_datapolicy_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bigquery_datapolicy_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bigquery_data_transfer_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "bigquery_data_transfer_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_bigquery_connection_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bigquery_connection_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bigquery_analytics_hub_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "bigquery_analytics_hub_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_biglake_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "biglake_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_big_query_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "big_query_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_beyondcorp_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "beyondcorp_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assured_workloads_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "assured_workloads_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_artifact_registry_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "artifact_registry_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_engine_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "app_engine_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apikeys_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apikeys_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apigee_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apigee_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alloydb_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alloydb_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_add_terraform_attribution_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "add_terraform_attribution_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_directory_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "active_directory_custom_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_context_manager_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "access_context_manager_custom_endpoint", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_access_approval_custom_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_approval_custom_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google

[@@@deriving.end]

let batching ?enable_batching ?send_after () : batching =
  { enable_batching; send_after }

let google ?access_approval_custom_endpoint
    ?access_context_manager_custom_endpoint ?access_token
    ?active_directory_custom_endpoint
    ?add_terraform_attribution_label ?alloydb_custom_endpoint
    ?apigee_custom_endpoint ?apikeys_custom_endpoint
    ?app_engine_custom_endpoint ?artifact_registry_custom_endpoint
    ?assured_workloads_custom_endpoint ?beyondcorp_custom_endpoint
    ?big_query_custom_endpoint ?biglake_custom_endpoint
    ?bigquery_analytics_hub_custom_endpoint
    ?bigquery_connection_custom_endpoint
    ?bigquery_data_transfer_custom_endpoint
    ?bigquery_datapolicy_custom_endpoint
    ?bigquery_reservation_custom_endpoint ?bigtable_custom_endpoint
    ?billing_custom_endpoint ?billing_project
    ?binary_authorization_custom_endpoint
    ?blockchain_node_engine_custom_endpoint
    ?certificate_manager_custom_endpoint ?cloud_asset_custom_endpoint
    ?cloud_billing_custom_endpoint ?cloud_build_custom_endpoint
    ?cloud_build_worker_pool_custom_endpoint
    ?cloud_functions_custom_endpoint ?cloud_identity_custom_endpoint
    ?cloud_ids_custom_endpoint
    ?cloud_resource_manager_custom_endpoint
    ?cloud_run_custom_endpoint ?cloud_run_v2_custom_endpoint
    ?cloud_scheduler_custom_endpoint ?cloud_tasks_custom_endpoint
    ?cloudbuildv2_custom_endpoint ?clouddeploy_custom_endpoint
    ?clouddomains_custom_endpoint ?cloudfunctions2_custom_endpoint
    ?composer_custom_endpoint ?compute_custom_endpoint
    ?container_analysis_custom_endpoint
    ?container_attached_custom_endpoint
    ?container_aws_custom_endpoint ?container_azure_custom_endpoint
    ?container_custom_endpoint ?core_billing_custom_endpoint
    ?credentials ?data_catalog_custom_endpoint
    ?data_fusion_custom_endpoint
    ?data_loss_prevention_custom_endpoint
    ?data_pipeline_custom_endpoint
    ?database_migration_service_custom_endpoint
    ?dataflow_custom_endpoint ?dataplex_custom_endpoint
    ?dataproc_custom_endpoint ?dataproc_metastore_custom_endpoint
    ?datastore_custom_endpoint ?datastream_custom_endpoint
    ?default_labels ?deployment_manager_custom_endpoint
    ?dialogflow_custom_endpoint ?dialogflow_cx_custom_endpoint
    ?discovery_engine_custom_endpoint ?dns_custom_endpoint
    ?document_ai_custom_endpoint
    ?document_ai_warehouse_custom_endpoint
    ?edgecontainer_custom_endpoint ?edgenetwork_custom_endpoint
    ?essential_contacts_custom_endpoint ?eventarc_custom_endpoint
    ?filestore_custom_endpoint ?firebase_app_check_custom_endpoint
    ?firebaserules_custom_endpoint ?firestore_custom_endpoint
    ?gke_backup_custom_endpoint ?gke_hub2_custom_endpoint
    ?gke_hub_custom_endpoint ?gkehub_feature_custom_endpoint
    ?gkeonprem_custom_endpoint ?healthcare_custom_endpoint
    ?iam2_custom_endpoint ?iam_beta_custom_endpoint
    ?iam_credentials_custom_endpoint ?iam_custom_endpoint
    ?iam_workforce_pool_custom_endpoint ?iap_custom_endpoint
    ?identity_platform_custom_endpoint ?impersonate_service_account
    ?impersonate_service_account_delegates
    ?integration_connectors_custom_endpoint ?kms_custom_endpoint
    ?logging_custom_endpoint ?looker_custom_endpoint
    ?memcache_custom_endpoint ?migration_center_custom_endpoint
    ?ml_engine_custom_endpoint ?monitoring_custom_endpoint
    ?netapp_custom_endpoint ?network_connectivity_custom_endpoint
    ?network_management_custom_endpoint
    ?network_security_custom_endpoint
    ?network_services_custom_endpoint ?notebooks_custom_endpoint
    ?org_policy_custom_endpoint ?os_config_custom_endpoint
    ?os_login_custom_endpoint ?privateca_custom_endpoint ?project
    ?public_ca_custom_endpoint ?pubsub_custom_endpoint
    ?pubsub_lite_custom_endpoint
    ?recaptcha_enterprise_custom_endpoint ?redis_custom_endpoint
    ?region ?request_reason ?request_timeout
    ?resource_manager_custom_endpoint
    ?resource_manager_v3_custom_endpoint ?scopes
    ?secret_manager_custom_endpoint
    ?secure_source_manager_custom_endpoint
    ?security_center_custom_endpoint ?securityposture_custom_endpoint
    ?service_management_custom_endpoint
    ?service_networking_custom_endpoint
    ?service_usage_custom_endpoint ?source_repo_custom_endpoint
    ?spanner_custom_endpoint ?sql_custom_endpoint
    ?storage_custom_endpoint ?storage_insights_custom_endpoint
    ?storage_transfer_custom_endpoint ?tags_custom_endpoint
    ?tags_location_custom_endpoint
    ?terraform_attribution_label_addition_strategy
    ?tpu_custom_endpoint ?universe_domain ?user_project_override
    ?vertex_ai_custom_endpoint ?vmwareengine_custom_endpoint
    ?vpc_access_custom_endpoint ?workbench_custom_endpoint
    ?workflows_custom_endpoint ?zone ?(batching = []) () : google =
  {
    access_approval_custom_endpoint;
    access_context_manager_custom_endpoint;
    access_token;
    active_directory_custom_endpoint;
    add_terraform_attribution_label;
    alloydb_custom_endpoint;
    apigee_custom_endpoint;
    apikeys_custom_endpoint;
    app_engine_custom_endpoint;
    artifact_registry_custom_endpoint;
    assured_workloads_custom_endpoint;
    beyondcorp_custom_endpoint;
    big_query_custom_endpoint;
    biglake_custom_endpoint;
    bigquery_analytics_hub_custom_endpoint;
    bigquery_connection_custom_endpoint;
    bigquery_data_transfer_custom_endpoint;
    bigquery_datapolicy_custom_endpoint;
    bigquery_reservation_custom_endpoint;
    bigtable_custom_endpoint;
    billing_custom_endpoint;
    billing_project;
    binary_authorization_custom_endpoint;
    blockchain_node_engine_custom_endpoint;
    certificate_manager_custom_endpoint;
    cloud_asset_custom_endpoint;
    cloud_billing_custom_endpoint;
    cloud_build_custom_endpoint;
    cloud_build_worker_pool_custom_endpoint;
    cloud_functions_custom_endpoint;
    cloud_identity_custom_endpoint;
    cloud_ids_custom_endpoint;
    cloud_resource_manager_custom_endpoint;
    cloud_run_custom_endpoint;
    cloud_run_v2_custom_endpoint;
    cloud_scheduler_custom_endpoint;
    cloud_tasks_custom_endpoint;
    cloudbuildv2_custom_endpoint;
    clouddeploy_custom_endpoint;
    clouddomains_custom_endpoint;
    cloudfunctions2_custom_endpoint;
    composer_custom_endpoint;
    compute_custom_endpoint;
    container_analysis_custom_endpoint;
    container_attached_custom_endpoint;
    container_aws_custom_endpoint;
    container_azure_custom_endpoint;
    container_custom_endpoint;
    core_billing_custom_endpoint;
    credentials;
    data_catalog_custom_endpoint;
    data_fusion_custom_endpoint;
    data_loss_prevention_custom_endpoint;
    data_pipeline_custom_endpoint;
    database_migration_service_custom_endpoint;
    dataflow_custom_endpoint;
    dataplex_custom_endpoint;
    dataproc_custom_endpoint;
    dataproc_metastore_custom_endpoint;
    datastore_custom_endpoint;
    datastream_custom_endpoint;
    default_labels;
    deployment_manager_custom_endpoint;
    dialogflow_custom_endpoint;
    dialogflow_cx_custom_endpoint;
    discovery_engine_custom_endpoint;
    dns_custom_endpoint;
    document_ai_custom_endpoint;
    document_ai_warehouse_custom_endpoint;
    edgecontainer_custom_endpoint;
    edgenetwork_custom_endpoint;
    essential_contacts_custom_endpoint;
    eventarc_custom_endpoint;
    filestore_custom_endpoint;
    firebase_app_check_custom_endpoint;
    firebaserules_custom_endpoint;
    firestore_custom_endpoint;
    gke_backup_custom_endpoint;
    gke_hub2_custom_endpoint;
    gke_hub_custom_endpoint;
    gkehub_feature_custom_endpoint;
    gkeonprem_custom_endpoint;
    healthcare_custom_endpoint;
    iam2_custom_endpoint;
    iam_beta_custom_endpoint;
    iam_credentials_custom_endpoint;
    iam_custom_endpoint;
    iam_workforce_pool_custom_endpoint;
    iap_custom_endpoint;
    identity_platform_custom_endpoint;
    impersonate_service_account;
    impersonate_service_account_delegates;
    integration_connectors_custom_endpoint;
    kms_custom_endpoint;
    logging_custom_endpoint;
    looker_custom_endpoint;
    memcache_custom_endpoint;
    migration_center_custom_endpoint;
    ml_engine_custom_endpoint;
    monitoring_custom_endpoint;
    netapp_custom_endpoint;
    network_connectivity_custom_endpoint;
    network_management_custom_endpoint;
    network_security_custom_endpoint;
    network_services_custom_endpoint;
    notebooks_custom_endpoint;
    org_policy_custom_endpoint;
    os_config_custom_endpoint;
    os_login_custom_endpoint;
    privateca_custom_endpoint;
    project;
    public_ca_custom_endpoint;
    pubsub_custom_endpoint;
    pubsub_lite_custom_endpoint;
    recaptcha_enterprise_custom_endpoint;
    redis_custom_endpoint;
    region;
    request_reason;
    request_timeout;
    resource_manager_custom_endpoint;
    resource_manager_v3_custom_endpoint;
    scopes;
    secret_manager_custom_endpoint;
    secure_source_manager_custom_endpoint;
    security_center_custom_endpoint;
    securityposture_custom_endpoint;
    service_management_custom_endpoint;
    service_networking_custom_endpoint;
    service_usage_custom_endpoint;
    source_repo_custom_endpoint;
    spanner_custom_endpoint;
    sql_custom_endpoint;
    storage_custom_endpoint;
    storage_insights_custom_endpoint;
    storage_transfer_custom_endpoint;
    tags_custom_endpoint;
    tags_location_custom_endpoint;
    terraform_attribution_label_addition_strategy;
    tpu_custom_endpoint;
    universe_domain;
    user_project_override;
    vertex_ai_custom_endpoint;
    vmwareengine_custom_endpoint;
    vpc_access_custom_endpoint;
    workbench_custom_endpoint;
    workflows_custom_endpoint;
    zone;
    batching;
  }

let make ?access_approval_custom_endpoint
    ?access_context_manager_custom_endpoint ?access_token
    ?active_directory_custom_endpoint
    ?add_terraform_attribution_label ?alloydb_custom_endpoint
    ?apigee_custom_endpoint ?apikeys_custom_endpoint
    ?app_engine_custom_endpoint ?artifact_registry_custom_endpoint
    ?assured_workloads_custom_endpoint ?beyondcorp_custom_endpoint
    ?big_query_custom_endpoint ?biglake_custom_endpoint
    ?bigquery_analytics_hub_custom_endpoint
    ?bigquery_connection_custom_endpoint
    ?bigquery_data_transfer_custom_endpoint
    ?bigquery_datapolicy_custom_endpoint
    ?bigquery_reservation_custom_endpoint ?bigtable_custom_endpoint
    ?billing_custom_endpoint ?billing_project
    ?binary_authorization_custom_endpoint
    ?blockchain_node_engine_custom_endpoint
    ?certificate_manager_custom_endpoint ?cloud_asset_custom_endpoint
    ?cloud_billing_custom_endpoint ?cloud_build_custom_endpoint
    ?cloud_build_worker_pool_custom_endpoint
    ?cloud_functions_custom_endpoint ?cloud_identity_custom_endpoint
    ?cloud_ids_custom_endpoint
    ?cloud_resource_manager_custom_endpoint
    ?cloud_run_custom_endpoint ?cloud_run_v2_custom_endpoint
    ?cloud_scheduler_custom_endpoint ?cloud_tasks_custom_endpoint
    ?cloudbuildv2_custom_endpoint ?clouddeploy_custom_endpoint
    ?clouddomains_custom_endpoint ?cloudfunctions2_custom_endpoint
    ?composer_custom_endpoint ?compute_custom_endpoint
    ?container_analysis_custom_endpoint
    ?container_attached_custom_endpoint
    ?container_aws_custom_endpoint ?container_azure_custom_endpoint
    ?container_custom_endpoint ?core_billing_custom_endpoint
    ?credentials ?data_catalog_custom_endpoint
    ?data_fusion_custom_endpoint
    ?data_loss_prevention_custom_endpoint
    ?data_pipeline_custom_endpoint
    ?database_migration_service_custom_endpoint
    ?dataflow_custom_endpoint ?dataplex_custom_endpoint
    ?dataproc_custom_endpoint ?dataproc_metastore_custom_endpoint
    ?datastore_custom_endpoint ?datastream_custom_endpoint
    ?default_labels ?deployment_manager_custom_endpoint
    ?dialogflow_custom_endpoint ?dialogflow_cx_custom_endpoint
    ?discovery_engine_custom_endpoint ?dns_custom_endpoint
    ?document_ai_custom_endpoint
    ?document_ai_warehouse_custom_endpoint
    ?edgecontainer_custom_endpoint ?edgenetwork_custom_endpoint
    ?essential_contacts_custom_endpoint ?eventarc_custom_endpoint
    ?filestore_custom_endpoint ?firebase_app_check_custom_endpoint
    ?firebaserules_custom_endpoint ?firestore_custom_endpoint
    ?gke_backup_custom_endpoint ?gke_hub2_custom_endpoint
    ?gke_hub_custom_endpoint ?gkehub_feature_custom_endpoint
    ?gkeonprem_custom_endpoint ?healthcare_custom_endpoint
    ?iam2_custom_endpoint ?iam_beta_custom_endpoint
    ?iam_credentials_custom_endpoint ?iam_custom_endpoint
    ?iam_workforce_pool_custom_endpoint ?iap_custom_endpoint
    ?identity_platform_custom_endpoint ?impersonate_service_account
    ?impersonate_service_account_delegates
    ?integration_connectors_custom_endpoint ?kms_custom_endpoint
    ?logging_custom_endpoint ?looker_custom_endpoint
    ?memcache_custom_endpoint ?migration_center_custom_endpoint
    ?ml_engine_custom_endpoint ?monitoring_custom_endpoint
    ?netapp_custom_endpoint ?network_connectivity_custom_endpoint
    ?network_management_custom_endpoint
    ?network_security_custom_endpoint
    ?network_services_custom_endpoint ?notebooks_custom_endpoint
    ?org_policy_custom_endpoint ?os_config_custom_endpoint
    ?os_login_custom_endpoint ?privateca_custom_endpoint ?project
    ?public_ca_custom_endpoint ?pubsub_custom_endpoint
    ?pubsub_lite_custom_endpoint
    ?recaptcha_enterprise_custom_endpoint ?redis_custom_endpoint
    ?region ?request_reason ?request_timeout
    ?resource_manager_custom_endpoint
    ?resource_manager_v3_custom_endpoint ?scopes
    ?secret_manager_custom_endpoint
    ?secure_source_manager_custom_endpoint
    ?security_center_custom_endpoint ?securityposture_custom_endpoint
    ?service_management_custom_endpoint
    ?service_networking_custom_endpoint
    ?service_usage_custom_endpoint ?source_repo_custom_endpoint
    ?spanner_custom_endpoint ?sql_custom_endpoint
    ?storage_custom_endpoint ?storage_insights_custom_endpoint
    ?storage_transfer_custom_endpoint ?tags_custom_endpoint
    ?tags_location_custom_endpoint
    ?terraform_attribution_label_addition_strategy
    ?tpu_custom_endpoint ?universe_domain ?user_project_override
    ?vertex_ai_custom_endpoint ?vmwareengine_custom_endpoint
    ?vpc_access_custom_endpoint ?workbench_custom_endpoint
    ?workflows_custom_endpoint ?zone ?(batching = []) () =
  {
    Tf_core.id = "google";
    json =
      yojson_of_google
        (google ?access_approval_custom_endpoint
           ?access_context_manager_custom_endpoint ?access_token
           ?active_directory_custom_endpoint
           ?add_terraform_attribution_label ?alloydb_custom_endpoint
           ?apigee_custom_endpoint ?apikeys_custom_endpoint
           ?app_engine_custom_endpoint
           ?artifact_registry_custom_endpoint
           ?assured_workloads_custom_endpoint
           ?beyondcorp_custom_endpoint ?big_query_custom_endpoint
           ?biglake_custom_endpoint
           ?bigquery_analytics_hub_custom_endpoint
           ?bigquery_connection_custom_endpoint
           ?bigquery_data_transfer_custom_endpoint
           ?bigquery_datapolicy_custom_endpoint
           ?bigquery_reservation_custom_endpoint
           ?bigtable_custom_endpoint ?billing_custom_endpoint
           ?billing_project ?binary_authorization_custom_endpoint
           ?blockchain_node_engine_custom_endpoint
           ?certificate_manager_custom_endpoint
           ?cloud_asset_custom_endpoint
           ?cloud_billing_custom_endpoint
           ?cloud_build_custom_endpoint
           ?cloud_build_worker_pool_custom_endpoint
           ?cloud_functions_custom_endpoint
           ?cloud_identity_custom_endpoint ?cloud_ids_custom_endpoint
           ?cloud_resource_manager_custom_endpoint
           ?cloud_run_custom_endpoint ?cloud_run_v2_custom_endpoint
           ?cloud_scheduler_custom_endpoint
           ?cloud_tasks_custom_endpoint ?cloudbuildv2_custom_endpoint
           ?clouddeploy_custom_endpoint ?clouddomains_custom_endpoint
           ?cloudfunctions2_custom_endpoint ?composer_custom_endpoint
           ?compute_custom_endpoint
           ?container_analysis_custom_endpoint
           ?container_attached_custom_endpoint
           ?container_aws_custom_endpoint
           ?container_azure_custom_endpoint
           ?container_custom_endpoint ?core_billing_custom_endpoint
           ?credentials ?data_catalog_custom_endpoint
           ?data_fusion_custom_endpoint
           ?data_loss_prevention_custom_endpoint
           ?data_pipeline_custom_endpoint
           ?database_migration_service_custom_endpoint
           ?dataflow_custom_endpoint ?dataplex_custom_endpoint
           ?dataproc_custom_endpoint
           ?dataproc_metastore_custom_endpoint
           ?datastore_custom_endpoint ?datastream_custom_endpoint
           ?default_labels ?deployment_manager_custom_endpoint
           ?dialogflow_custom_endpoint ?dialogflow_cx_custom_endpoint
           ?discovery_engine_custom_endpoint ?dns_custom_endpoint
           ?document_ai_custom_endpoint
           ?document_ai_warehouse_custom_endpoint
           ?edgecontainer_custom_endpoint
           ?edgenetwork_custom_endpoint
           ?essential_contacts_custom_endpoint
           ?eventarc_custom_endpoint ?filestore_custom_endpoint
           ?firebase_app_check_custom_endpoint
           ?firebaserules_custom_endpoint ?firestore_custom_endpoint
           ?gke_backup_custom_endpoint ?gke_hub2_custom_endpoint
           ?gke_hub_custom_endpoint ?gkehub_feature_custom_endpoint
           ?gkeonprem_custom_endpoint ?healthcare_custom_endpoint
           ?iam2_custom_endpoint ?iam_beta_custom_endpoint
           ?iam_credentials_custom_endpoint ?iam_custom_endpoint
           ?iam_workforce_pool_custom_endpoint ?iap_custom_endpoint
           ?identity_platform_custom_endpoint
           ?impersonate_service_account
           ?impersonate_service_account_delegates
           ?integration_connectors_custom_endpoint
           ?kms_custom_endpoint ?logging_custom_endpoint
           ?looker_custom_endpoint ?memcache_custom_endpoint
           ?migration_center_custom_endpoint
           ?ml_engine_custom_endpoint ?monitoring_custom_endpoint
           ?netapp_custom_endpoint
           ?network_connectivity_custom_endpoint
           ?network_management_custom_endpoint
           ?network_security_custom_endpoint
           ?network_services_custom_endpoint
           ?notebooks_custom_endpoint ?org_policy_custom_endpoint
           ?os_config_custom_endpoint ?os_login_custom_endpoint
           ?privateca_custom_endpoint ?project
           ?public_ca_custom_endpoint ?pubsub_custom_endpoint
           ?pubsub_lite_custom_endpoint
           ?recaptcha_enterprise_custom_endpoint
           ?redis_custom_endpoint ?region ?request_reason
           ?request_timeout ?resource_manager_custom_endpoint
           ?resource_manager_v3_custom_endpoint ?scopes
           ?secret_manager_custom_endpoint
           ?secure_source_manager_custom_endpoint
           ?security_center_custom_endpoint
           ?securityposture_custom_endpoint
           ?service_management_custom_endpoint
           ?service_networking_custom_endpoint
           ?service_usage_custom_endpoint
           ?source_repo_custom_endpoint ?spanner_custom_endpoint
           ?sql_custom_endpoint ?storage_custom_endpoint
           ?storage_insights_custom_endpoint
           ?storage_transfer_custom_endpoint ?tags_custom_endpoint
           ?tags_location_custom_endpoint
           ?terraform_attribution_label_addition_strategy
           ?tpu_custom_endpoint ?universe_domain
           ?user_project_override ?vertex_ai_custom_endpoint
           ?vmwareengine_custom_endpoint ?vpc_access_custom_endpoint
           ?workbench_custom_endpoint ?workflows_custom_endpoint
           ?zone ~batching ());
  }

let register ?tf_module ?access_approval_custom_endpoint
    ?access_context_manager_custom_endpoint ?access_token
    ?active_directory_custom_endpoint
    ?add_terraform_attribution_label ?alloydb_custom_endpoint
    ?apigee_custom_endpoint ?apikeys_custom_endpoint
    ?app_engine_custom_endpoint ?artifact_registry_custom_endpoint
    ?assured_workloads_custom_endpoint ?beyondcorp_custom_endpoint
    ?big_query_custom_endpoint ?biglake_custom_endpoint
    ?bigquery_analytics_hub_custom_endpoint
    ?bigquery_connection_custom_endpoint
    ?bigquery_data_transfer_custom_endpoint
    ?bigquery_datapolicy_custom_endpoint
    ?bigquery_reservation_custom_endpoint ?bigtable_custom_endpoint
    ?billing_custom_endpoint ?billing_project
    ?binary_authorization_custom_endpoint
    ?blockchain_node_engine_custom_endpoint
    ?certificate_manager_custom_endpoint ?cloud_asset_custom_endpoint
    ?cloud_billing_custom_endpoint ?cloud_build_custom_endpoint
    ?cloud_build_worker_pool_custom_endpoint
    ?cloud_functions_custom_endpoint ?cloud_identity_custom_endpoint
    ?cloud_ids_custom_endpoint
    ?cloud_resource_manager_custom_endpoint
    ?cloud_run_custom_endpoint ?cloud_run_v2_custom_endpoint
    ?cloud_scheduler_custom_endpoint ?cloud_tasks_custom_endpoint
    ?cloudbuildv2_custom_endpoint ?clouddeploy_custom_endpoint
    ?clouddomains_custom_endpoint ?cloudfunctions2_custom_endpoint
    ?composer_custom_endpoint ?compute_custom_endpoint
    ?container_analysis_custom_endpoint
    ?container_attached_custom_endpoint
    ?container_aws_custom_endpoint ?container_azure_custom_endpoint
    ?container_custom_endpoint ?core_billing_custom_endpoint
    ?credentials ?data_catalog_custom_endpoint
    ?data_fusion_custom_endpoint
    ?data_loss_prevention_custom_endpoint
    ?data_pipeline_custom_endpoint
    ?database_migration_service_custom_endpoint
    ?dataflow_custom_endpoint ?dataplex_custom_endpoint
    ?dataproc_custom_endpoint ?dataproc_metastore_custom_endpoint
    ?datastore_custom_endpoint ?datastream_custom_endpoint
    ?default_labels ?deployment_manager_custom_endpoint
    ?dialogflow_custom_endpoint ?dialogflow_cx_custom_endpoint
    ?discovery_engine_custom_endpoint ?dns_custom_endpoint
    ?document_ai_custom_endpoint
    ?document_ai_warehouse_custom_endpoint
    ?edgecontainer_custom_endpoint ?edgenetwork_custom_endpoint
    ?essential_contacts_custom_endpoint ?eventarc_custom_endpoint
    ?filestore_custom_endpoint ?firebase_app_check_custom_endpoint
    ?firebaserules_custom_endpoint ?firestore_custom_endpoint
    ?gke_backup_custom_endpoint ?gke_hub2_custom_endpoint
    ?gke_hub_custom_endpoint ?gkehub_feature_custom_endpoint
    ?gkeonprem_custom_endpoint ?healthcare_custom_endpoint
    ?iam2_custom_endpoint ?iam_beta_custom_endpoint
    ?iam_credentials_custom_endpoint ?iam_custom_endpoint
    ?iam_workforce_pool_custom_endpoint ?iap_custom_endpoint
    ?identity_platform_custom_endpoint ?impersonate_service_account
    ?impersonate_service_account_delegates
    ?integration_connectors_custom_endpoint ?kms_custom_endpoint
    ?logging_custom_endpoint ?looker_custom_endpoint
    ?memcache_custom_endpoint ?migration_center_custom_endpoint
    ?ml_engine_custom_endpoint ?monitoring_custom_endpoint
    ?netapp_custom_endpoint ?network_connectivity_custom_endpoint
    ?network_management_custom_endpoint
    ?network_security_custom_endpoint
    ?network_services_custom_endpoint ?notebooks_custom_endpoint
    ?org_policy_custom_endpoint ?os_config_custom_endpoint
    ?os_login_custom_endpoint ?privateca_custom_endpoint ?project
    ?public_ca_custom_endpoint ?pubsub_custom_endpoint
    ?pubsub_lite_custom_endpoint
    ?recaptcha_enterprise_custom_endpoint ?redis_custom_endpoint
    ?region ?request_reason ?request_timeout
    ?resource_manager_custom_endpoint
    ?resource_manager_v3_custom_endpoint ?scopes
    ?secret_manager_custom_endpoint
    ?secure_source_manager_custom_endpoint
    ?security_center_custom_endpoint ?securityposture_custom_endpoint
    ?service_management_custom_endpoint
    ?service_networking_custom_endpoint
    ?service_usage_custom_endpoint ?source_repo_custom_endpoint
    ?spanner_custom_endpoint ?sql_custom_endpoint
    ?storage_custom_endpoint ?storage_insights_custom_endpoint
    ?storage_transfer_custom_endpoint ?tags_custom_endpoint
    ?tags_location_custom_endpoint
    ?terraform_attribution_label_addition_strategy
    ?tpu_custom_endpoint ?universe_domain ?user_project_override
    ?vertex_ai_custom_endpoint ?vmwareengine_custom_endpoint
    ?vpc_access_custom_endpoint ?workbench_custom_endpoint
    ?workflows_custom_endpoint ?zone ?(batching = []) ~version () =
  let (p : Tf_core.provider) =
    make ?access_approval_custom_endpoint
      ?access_context_manager_custom_endpoint ?access_token
      ?active_directory_custom_endpoint
      ?add_terraform_attribution_label ?alloydb_custom_endpoint
      ?apigee_custom_endpoint ?apikeys_custom_endpoint
      ?app_engine_custom_endpoint ?artifact_registry_custom_endpoint
      ?assured_workloads_custom_endpoint ?beyondcorp_custom_endpoint
      ?big_query_custom_endpoint ?biglake_custom_endpoint
      ?bigquery_analytics_hub_custom_endpoint
      ?bigquery_connection_custom_endpoint
      ?bigquery_data_transfer_custom_endpoint
      ?bigquery_datapolicy_custom_endpoint
      ?bigquery_reservation_custom_endpoint ?bigtable_custom_endpoint
      ?billing_custom_endpoint ?billing_project
      ?binary_authorization_custom_endpoint
      ?blockchain_node_engine_custom_endpoint
      ?certificate_manager_custom_endpoint
      ?cloud_asset_custom_endpoint ?cloud_billing_custom_endpoint
      ?cloud_build_custom_endpoint
      ?cloud_build_worker_pool_custom_endpoint
      ?cloud_functions_custom_endpoint
      ?cloud_identity_custom_endpoint ?cloud_ids_custom_endpoint
      ?cloud_resource_manager_custom_endpoint
      ?cloud_run_custom_endpoint ?cloud_run_v2_custom_endpoint
      ?cloud_scheduler_custom_endpoint ?cloud_tasks_custom_endpoint
      ?cloudbuildv2_custom_endpoint ?clouddeploy_custom_endpoint
      ?clouddomains_custom_endpoint ?cloudfunctions2_custom_endpoint
      ?composer_custom_endpoint ?compute_custom_endpoint
      ?container_analysis_custom_endpoint
      ?container_attached_custom_endpoint
      ?container_aws_custom_endpoint ?container_azure_custom_endpoint
      ?container_custom_endpoint ?core_billing_custom_endpoint
      ?credentials ?data_catalog_custom_endpoint
      ?data_fusion_custom_endpoint
      ?data_loss_prevention_custom_endpoint
      ?data_pipeline_custom_endpoint
      ?database_migration_service_custom_endpoint
      ?dataflow_custom_endpoint ?dataplex_custom_endpoint
      ?dataproc_custom_endpoint ?dataproc_metastore_custom_endpoint
      ?datastore_custom_endpoint ?datastream_custom_endpoint
      ?default_labels ?deployment_manager_custom_endpoint
      ?dialogflow_custom_endpoint ?dialogflow_cx_custom_endpoint
      ?discovery_engine_custom_endpoint ?dns_custom_endpoint
      ?document_ai_custom_endpoint
      ?document_ai_warehouse_custom_endpoint
      ?edgecontainer_custom_endpoint ?edgenetwork_custom_endpoint
      ?essential_contacts_custom_endpoint ?eventarc_custom_endpoint
      ?filestore_custom_endpoint ?firebase_app_check_custom_endpoint
      ?firebaserules_custom_endpoint ?firestore_custom_endpoint
      ?gke_backup_custom_endpoint ?gke_hub2_custom_endpoint
      ?gke_hub_custom_endpoint ?gkehub_feature_custom_endpoint
      ?gkeonprem_custom_endpoint ?healthcare_custom_endpoint
      ?iam2_custom_endpoint ?iam_beta_custom_endpoint
      ?iam_credentials_custom_endpoint ?iam_custom_endpoint
      ?iam_workforce_pool_custom_endpoint ?iap_custom_endpoint
      ?identity_platform_custom_endpoint ?impersonate_service_account
      ?impersonate_service_account_delegates
      ?integration_connectors_custom_endpoint ?kms_custom_endpoint
      ?logging_custom_endpoint ?looker_custom_endpoint
      ?memcache_custom_endpoint ?migration_center_custom_endpoint
      ?ml_engine_custom_endpoint ?monitoring_custom_endpoint
      ?netapp_custom_endpoint ?network_connectivity_custom_endpoint
      ?network_management_custom_endpoint
      ?network_security_custom_endpoint
      ?network_services_custom_endpoint ?notebooks_custom_endpoint
      ?org_policy_custom_endpoint ?os_config_custom_endpoint
      ?os_login_custom_endpoint ?privateca_custom_endpoint ?project
      ?public_ca_custom_endpoint ?pubsub_custom_endpoint
      ?pubsub_lite_custom_endpoint
      ?recaptcha_enterprise_custom_endpoint ?redis_custom_endpoint
      ?region ?request_reason ?request_timeout
      ?resource_manager_custom_endpoint
      ?resource_manager_v3_custom_endpoint ?scopes
      ?secret_manager_custom_endpoint
      ?secure_source_manager_custom_endpoint
      ?security_center_custom_endpoint
      ?securityposture_custom_endpoint
      ?service_management_custom_endpoint
      ?service_networking_custom_endpoint
      ?service_usage_custom_endpoint ?source_repo_custom_endpoint
      ?spanner_custom_endpoint ?sql_custom_endpoint
      ?storage_custom_endpoint ?storage_insights_custom_endpoint
      ?storage_transfer_custom_endpoint ?tags_custom_endpoint
      ?tags_location_custom_endpoint
      ?terraform_attribution_label_addition_strategy
      ?tpu_custom_endpoint ?universe_domain ?user_project_override
      ?vertex_ai_custom_endpoint ?vmwareengine_custom_endpoint
      ?vpc_access_custom_endpoint ?workbench_custom_endpoint
      ?workflows_custom_endpoint ?zone ~batching ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        "source", `String "registry.terraform.io/hashicorp/google";
        "version", `String version;
      ]);
  ()
