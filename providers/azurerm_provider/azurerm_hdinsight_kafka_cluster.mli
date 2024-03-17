(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hdinsight_kafka_cluster__component_version
type azurerm_hdinsight_kafka_cluster__compute_isolation
type azurerm_hdinsight_kafka_cluster__disk_encryption
type azurerm_hdinsight_kafka_cluster__extension
type azurerm_hdinsight_kafka_cluster__gateway
type azurerm_hdinsight_kafka_cluster__metastores__ambari
type azurerm_hdinsight_kafka_cluster__metastores__hive
type azurerm_hdinsight_kafka_cluster__metastores__oozie
type azurerm_hdinsight_kafka_cluster__metastores
type azurerm_hdinsight_kafka_cluster__monitor
type azurerm_hdinsight_kafka_cluster__network
type azurerm_hdinsight_kafka_cluster__rest_proxy
type azurerm_hdinsight_kafka_cluster__roles__head_node__script_actions
type azurerm_hdinsight_kafka_cluster__roles__head_node

type azurerm_hdinsight_kafka_cluster__roles__kafka_management_node__script_actions

type azurerm_hdinsight_kafka_cluster__roles__kafka_management_node

type azurerm_hdinsight_kafka_cluster__roles__worker_node__script_actions

type azurerm_hdinsight_kafka_cluster__roles__worker_node

type azurerm_hdinsight_kafka_cluster__roles__zookeeper_node__script_actions

type azurerm_hdinsight_kafka_cluster__roles__zookeeper_node
type azurerm_hdinsight_kafka_cluster__roles
type azurerm_hdinsight_kafka_cluster__security_profile
type azurerm_hdinsight_kafka_cluster__storage_account
type azurerm_hdinsight_kafka_cluster__storage_account_gen2
type azurerm_hdinsight_kafka_cluster__timeouts
type azurerm_hdinsight_kafka_cluster

val azurerm_hdinsight_kafka_cluster :
  ?encryption_in_transit_enabled:bool ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tls_min_version:string ->
  ?timeouts:azurerm_hdinsight_kafka_cluster__timeouts ->
  cluster_version:string ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  tier:string ->
  component_version:
    azurerm_hdinsight_kafka_cluster__component_version list ->
  compute_isolation:
    azurerm_hdinsight_kafka_cluster__compute_isolation list ->
  disk_encryption:
    azurerm_hdinsight_kafka_cluster__disk_encryption list ->
  extension:azurerm_hdinsight_kafka_cluster__extension list ->
  gateway:azurerm_hdinsight_kafka_cluster__gateway list ->
  metastores:azurerm_hdinsight_kafka_cluster__metastores list ->
  monitor:azurerm_hdinsight_kafka_cluster__monitor list ->
  network:azurerm_hdinsight_kafka_cluster__network list ->
  rest_proxy:azurerm_hdinsight_kafka_cluster__rest_proxy list ->
  roles:azurerm_hdinsight_kafka_cluster__roles list ->
  security_profile:
    azurerm_hdinsight_kafka_cluster__security_profile list ->
  storage_account:
    azurerm_hdinsight_kafka_cluster__storage_account list ->
  storage_account_gen2:
    azurerm_hdinsight_kafka_cluster__storage_account_gen2 list ->
  string ->
  unit
