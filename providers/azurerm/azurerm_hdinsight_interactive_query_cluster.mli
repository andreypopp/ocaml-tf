(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type component_version

val component_version :
  interactive_hive:string prop -> unit -> component_version

type compute_isolation

val compute_isolation :
  ?compute_isolation_enabled:bool prop ->
  ?host_sku:string prop ->
  unit ->
  compute_isolation

type disk_encryption

val disk_encryption :
  ?encryption_algorithm:string prop ->
  ?encryption_at_host_enabled:bool prop ->
  ?key_vault_key_id:string prop ->
  ?key_vault_managed_identity_id:string prop ->
  unit ->
  disk_encryption

type extension

val extension :
  log_analytics_workspace_id:string prop ->
  primary_key:string prop ->
  unit ->
  extension

type gateway

val gateway :
  password:string prop -> username:string prop -> unit -> gateway

type metastores__ambari

val metastores__ambari :
  database_name:string prop ->
  password:string prop ->
  server:string prop ->
  username:string prop ->
  unit ->
  metastores__ambari

type metastores__hive

val metastores__hive :
  database_name:string prop ->
  password:string prop ->
  server:string prop ->
  username:string prop ->
  unit ->
  metastores__hive

type metastores__oozie

val metastores__oozie :
  database_name:string prop ->
  password:string prop ->
  server:string prop ->
  username:string prop ->
  unit ->
  metastores__oozie

type metastores

val metastores :
  ?ambari:metastores__ambari list ->
  ?hive:metastores__hive list ->
  ?oozie:metastores__oozie list ->
  unit ->
  metastores

type monitor

val monitor :
  log_analytics_workspace_id:string prop ->
  primary_key:string prop ->
  unit ->
  monitor

type network

val network :
  ?connection_direction:string prop ->
  ?private_link_enabled:bool prop ->
  unit ->
  network

type private_link_configuration__ip_configuration

val private_link_configuration__ip_configuration :
  ?primary:bool prop ->
  ?private_ip_address:string prop ->
  ?private_ip_allocation_method:string prop ->
  ?subnet_id:string prop ->
  name:string prop ->
  unit ->
  private_link_configuration__ip_configuration

type private_link_configuration

val private_link_configuration :
  group_id:string prop ->
  name:string prop ->
  ip_configuration:private_link_configuration__ip_configuration list ->
  unit ->
  private_link_configuration

type roles__head_node__script_actions

val roles__head_node__script_actions :
  ?parameters:string prop ->
  name:string prop ->
  uri:string prop ->
  unit ->
  roles__head_node__script_actions

type roles__head_node

val roles__head_node :
  ?password:string prop ->
  ?ssh_keys:string prop list ->
  ?subnet_id:string prop ->
  ?virtual_network_id:string prop ->
  ?script_actions:roles__head_node__script_actions list ->
  username:string prop ->
  vm_size:string prop ->
  unit ->
  roles__head_node

type roles__worker_node__autoscale__capacity

val roles__worker_node__autoscale__capacity :
  max_instance_count:float prop ->
  min_instance_count:float prop ->
  unit ->
  roles__worker_node__autoscale__capacity

type roles__worker_node__autoscale__recurrence__schedule

val roles__worker_node__autoscale__recurrence__schedule :
  days:string prop list ->
  target_instance_count:float prop ->
  time:string prop ->
  unit ->
  roles__worker_node__autoscale__recurrence__schedule

type roles__worker_node__autoscale__recurrence

val roles__worker_node__autoscale__recurrence :
  timezone:string prop ->
  schedule:roles__worker_node__autoscale__recurrence__schedule list ->
  unit ->
  roles__worker_node__autoscale__recurrence

type roles__worker_node__autoscale

val roles__worker_node__autoscale :
  ?capacity:roles__worker_node__autoscale__capacity list ->
  ?recurrence:roles__worker_node__autoscale__recurrence list ->
  unit ->
  roles__worker_node__autoscale

type roles__worker_node__script_actions

val roles__worker_node__script_actions :
  ?parameters:string prop ->
  name:string prop ->
  uri:string prop ->
  unit ->
  roles__worker_node__script_actions

type roles__worker_node

val roles__worker_node :
  ?password:string prop ->
  ?ssh_keys:string prop list ->
  ?subnet_id:string prop ->
  ?virtual_network_id:string prop ->
  ?autoscale:roles__worker_node__autoscale list ->
  ?script_actions:roles__worker_node__script_actions list ->
  target_instance_count:float prop ->
  username:string prop ->
  vm_size:string prop ->
  unit ->
  roles__worker_node

type roles__zookeeper_node__script_actions

val roles__zookeeper_node__script_actions :
  ?parameters:string prop ->
  name:string prop ->
  uri:string prop ->
  unit ->
  roles__zookeeper_node__script_actions

type roles__zookeeper_node

val roles__zookeeper_node :
  ?password:string prop ->
  ?ssh_keys:string prop list ->
  ?subnet_id:string prop ->
  ?virtual_network_id:string prop ->
  ?script_actions:roles__zookeeper_node__script_actions list ->
  username:string prop ->
  vm_size:string prop ->
  unit ->
  roles__zookeeper_node

type roles

val roles :
  head_node:roles__head_node list ->
  worker_node:roles__worker_node list ->
  zookeeper_node:roles__zookeeper_node list ->
  unit ->
  roles

type security_profile

val security_profile :
  ?cluster_users_group_dns:string prop list ->
  aadds_resource_id:string prop ->
  domain_name:string prop ->
  domain_user_password:string prop ->
  domain_username:string prop ->
  ldaps_urls:string prop list ->
  msi_resource_id:string prop ->
  unit ->
  security_profile

type storage_account

val storage_account :
  ?storage_resource_id:string prop ->
  is_default:bool prop ->
  storage_account_key:string prop ->
  storage_container_id:string prop ->
  unit ->
  storage_account

type storage_account_gen2

val storage_account_gen2 :
  filesystem_id:string prop ->
  is_default:bool prop ->
  managed_identity_resource_id:string prop ->
  storage_resource_id:string prop ->
  unit ->
  storage_account_gen2

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_hdinsight_interactive_query_cluster

val azurerm_hdinsight_interactive_query_cluster :
  ?encryption_in_transit_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tls_min_version:string prop ->
  ?compute_isolation:compute_isolation list ->
  ?disk_encryption:disk_encryption list ->
  ?extension:extension list ->
  ?metastores:metastores list ->
  ?monitor:monitor list ->
  ?network:network list ->
  ?private_link_configuration:private_link_configuration list ->
  ?security_profile:security_profile list ->
  ?storage_account:storage_account list ->
  ?storage_account_gen2:storage_account_gen2 list ->
  ?timeouts:timeouts ->
  cluster_version:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  tier:string prop ->
  component_version:component_version list ->
  gateway:gateway list ->
  roles:roles list ->
  unit ->
  azurerm_hdinsight_interactive_query_cluster

val yojson_of_azurerm_hdinsight_interactive_query_cluster :
  azurerm_hdinsight_interactive_query_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_version : string prop;
  encryption_in_transit_enabled : bool prop;
  https_endpoint : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  ssh_endpoint : string prop;
  tags : string Tf_core.assoc prop;
  tier : string prop;
  tls_min_version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?encryption_in_transit_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tls_min_version:string prop ->
  ?compute_isolation:compute_isolation list ->
  ?disk_encryption:disk_encryption list ->
  ?extension:extension list ->
  ?metastores:metastores list ->
  ?monitor:monitor list ->
  ?network:network list ->
  ?private_link_configuration:private_link_configuration list ->
  ?security_profile:security_profile list ->
  ?storage_account:storage_account list ->
  ?storage_account_gen2:storage_account_gen2 list ->
  ?timeouts:timeouts ->
  cluster_version:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  tier:string prop ->
  component_version:component_version list ->
  gateway:gateway list ->
  roles:roles list ->
  string ->
  t

val make :
  ?encryption_in_transit_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tls_min_version:string prop ->
  ?compute_isolation:compute_isolation list ->
  ?disk_encryption:disk_encryption list ->
  ?extension:extension list ->
  ?metastores:metastores list ->
  ?monitor:monitor list ->
  ?network:network list ->
  ?private_link_configuration:private_link_configuration list ->
  ?security_profile:security_profile list ->
  ?storage_account:storage_account list ->
  ?storage_account_gen2:storage_account_gen2 list ->
  ?timeouts:timeouts ->
  cluster_version:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  tier:string prop ->
  component_version:component_version list ->
  gateway:gateway list ->
  roles:roles list ->
  string ->
  t Tf_core.resource
