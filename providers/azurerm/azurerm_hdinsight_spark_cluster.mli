(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_hdinsight_spark_cluster__component_version
type azurerm_hdinsight_spark_cluster__compute_isolation
type azurerm_hdinsight_spark_cluster__disk_encryption
type azurerm_hdinsight_spark_cluster__extension
type azurerm_hdinsight_spark_cluster__gateway
type azurerm_hdinsight_spark_cluster__metastores__ambari
type azurerm_hdinsight_spark_cluster__metastores__hive
type azurerm_hdinsight_spark_cluster__metastores__oozie
type azurerm_hdinsight_spark_cluster__metastores
type azurerm_hdinsight_spark_cluster__monitor
type azurerm_hdinsight_spark_cluster__network
type azurerm_hdinsight_spark_cluster__roles__head_node__script_actions
type azurerm_hdinsight_spark_cluster__roles__head_node

type azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__capacity

type azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__recurrence__schedule

type azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__recurrence

type azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale

type azurerm_hdinsight_spark_cluster__roles__worker_node__script_actions

type azurerm_hdinsight_spark_cluster__roles__worker_node

type azurerm_hdinsight_spark_cluster__roles__zookeeper_node__script_actions

type azurerm_hdinsight_spark_cluster__roles__zookeeper_node
type azurerm_hdinsight_spark_cluster__roles
type azurerm_hdinsight_spark_cluster__security_profile
type azurerm_hdinsight_spark_cluster__storage_account
type azurerm_hdinsight_spark_cluster__storage_account_gen2
type azurerm_hdinsight_spark_cluster__timeouts
type azurerm_hdinsight_spark_cluster

type t = private {
  cluster_version : string prop;
  encryption_in_transit_enabled : bool prop;
  https_endpoint : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  ssh_endpoint : string prop;
  tags : (string * string) list prop;
  tier : string prop;
  tls_min_version : string prop;
}

val azurerm_hdinsight_spark_cluster :
  ?encryption_in_transit_enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tls_min_version:string prop ->
  ?timeouts:azurerm_hdinsight_spark_cluster__timeouts ->
  cluster_version:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  tier:string prop ->
  component_version:
    azurerm_hdinsight_spark_cluster__component_version list ->
  compute_isolation:
    azurerm_hdinsight_spark_cluster__compute_isolation list ->
  disk_encryption:
    azurerm_hdinsight_spark_cluster__disk_encryption list ->
  extension:azurerm_hdinsight_spark_cluster__extension list ->
  gateway:azurerm_hdinsight_spark_cluster__gateway list ->
  metastores:azurerm_hdinsight_spark_cluster__metastores list ->
  monitor:azurerm_hdinsight_spark_cluster__monitor list ->
  network:azurerm_hdinsight_spark_cluster__network list ->
  roles:azurerm_hdinsight_spark_cluster__roles list ->
  security_profile:
    azurerm_hdinsight_spark_cluster__security_profile list ->
  storage_account:
    azurerm_hdinsight_spark_cluster__storage_account list ->
  storage_account_gen2:
    azurerm_hdinsight_spark_cluster__storage_account_gen2 list ->
  string ->
  t
