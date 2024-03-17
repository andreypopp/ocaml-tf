(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_hdinsight_spark_cluster__component_version = {
  spark : string;  (** spark *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__component_version *)

type azurerm_hdinsight_spark_cluster__compute_isolation = {
  compute_isolation_enabled : bool option; [@option]
      (** compute_isolation_enabled *)
  host_sku : string option; [@option]  (** host_sku *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__compute_isolation *)

type azurerm_hdinsight_spark_cluster__disk_encryption = {
  encryption_algorithm : string option; [@option]
      (** encryption_algorithm *)
  encryption_at_host_enabled : bool option; [@option]
      (** encryption_at_host_enabled *)
  key_vault_key_id : string option; [@option]
      (** key_vault_key_id *)
  key_vault_managed_identity_id : string option; [@option]
      (** key_vault_managed_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__disk_encryption *)

type azurerm_hdinsight_spark_cluster__extension = {
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  primary_key : string;  (** primary_key *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__extension *)

type azurerm_hdinsight_spark_cluster__gateway = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__gateway *)

type azurerm_hdinsight_spark_cluster__metastores__ambari = {
  database_name : string;  (** database_name *)
  password : string;  (** password *)
  server : string;  (** server *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__metastores__ambari *)

type azurerm_hdinsight_spark_cluster__metastores__hive = {
  database_name : string;  (** database_name *)
  password : string;  (** password *)
  server : string;  (** server *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__metastores__hive *)

type azurerm_hdinsight_spark_cluster__metastores__oozie = {
  database_name : string;  (** database_name *)
  password : string;  (** password *)
  server : string;  (** server *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__metastores__oozie *)

type azurerm_hdinsight_spark_cluster__metastores = {
  ambari : azurerm_hdinsight_spark_cluster__metastores__ambari list;
  hive : azurerm_hdinsight_spark_cluster__metastores__hive list;
  oozie : azurerm_hdinsight_spark_cluster__metastores__oozie list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__metastores *)

type azurerm_hdinsight_spark_cluster__monitor = {
  log_analytics_workspace_id : string;
      (** log_analytics_workspace_id *)
  primary_key : string;  (** primary_key *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__monitor *)

type azurerm_hdinsight_spark_cluster__network = {
  connection_direction : string option; [@option]
      (** connection_direction *)
  private_link_enabled : bool option; [@option]
      (** private_link_enabled *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__network *)

type azurerm_hdinsight_spark_cluster__roles__head_node__script_actions = {
  name : string;  (** name *)
  parameters : string option; [@option]  (** parameters *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__head_node__script_actions *)

type azurerm_hdinsight_spark_cluster__roles__head_node = {
  password : string option; [@option]  (** password *)
  ssh_keys : string list option; [@option]  (** ssh_keys *)
  subnet_id : string option; [@option]  (** subnet_id *)
  username : string;  (** username *)
  virtual_network_id : string option; [@option]
      (** virtual_network_id *)
  vm_size : string;  (** vm_size *)
  script_actions :
    azurerm_hdinsight_spark_cluster__roles__head_node__script_actions
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__head_node *)

type azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__capacity = {
  max_instance_count : float;  (** max_instance_count *)
  min_instance_count : float;  (** min_instance_count *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__capacity *)

type azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__recurrence__schedule = {
  days : string list;  (** days *)
  target_instance_count : float;  (** target_instance_count *)
  time : string;  (** time *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__recurrence__schedule *)

type azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__recurrence = {
  timezone : string;  (** timezone *)
  schedule :
    azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__recurrence__schedule
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__recurrence *)

type azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale = {
  capacity :
    azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__capacity
    list;
  recurrence :
    azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale__recurrence
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale *)

type azurerm_hdinsight_spark_cluster__roles__worker_node__script_actions = {
  name : string;  (** name *)
  parameters : string option; [@option]  (** parameters *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__worker_node__script_actions *)

type azurerm_hdinsight_spark_cluster__roles__worker_node = {
  password : string option; [@option]  (** password *)
  ssh_keys : string list option; [@option]  (** ssh_keys *)
  subnet_id : string option; [@option]  (** subnet_id *)
  target_instance_count : float;  (** target_instance_count *)
  username : string;  (** username *)
  virtual_network_id : string option; [@option]
      (** virtual_network_id *)
  vm_size : string;  (** vm_size *)
  autoscale :
    azurerm_hdinsight_spark_cluster__roles__worker_node__autoscale
    list;
  script_actions :
    azurerm_hdinsight_spark_cluster__roles__worker_node__script_actions
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__worker_node *)

type azurerm_hdinsight_spark_cluster__roles__zookeeper_node__script_actions = {
  name : string;  (** name *)
  parameters : string option; [@option]  (** parameters *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__zookeeper_node__script_actions *)

type azurerm_hdinsight_spark_cluster__roles__zookeeper_node = {
  password : string option; [@option]  (** password *)
  ssh_keys : string list option; [@option]  (** ssh_keys *)
  subnet_id : string option; [@option]  (** subnet_id *)
  username : string;  (** username *)
  virtual_network_id : string option; [@option]
      (** virtual_network_id *)
  vm_size : string;  (** vm_size *)
  script_actions :
    azurerm_hdinsight_spark_cluster__roles__zookeeper_node__script_actions
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles__zookeeper_node *)

type azurerm_hdinsight_spark_cluster__roles = {
  head_node : azurerm_hdinsight_spark_cluster__roles__head_node list;
  worker_node :
    azurerm_hdinsight_spark_cluster__roles__worker_node list;
  zookeeper_node :
    azurerm_hdinsight_spark_cluster__roles__zookeeper_node list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__roles *)

type azurerm_hdinsight_spark_cluster__security_profile = {
  aadds_resource_id : string;  (** aadds_resource_id *)
  cluster_users_group_dns : string list option; [@option]
      (** cluster_users_group_dns *)
  domain_name : string;  (** domain_name *)
  domain_user_password : string;  (** domain_user_password *)
  domain_username : string;  (** domain_username *)
  ldaps_urls : string list;  (** ldaps_urls *)
  msi_resource_id : string;  (** msi_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__security_profile *)

type azurerm_hdinsight_spark_cluster__storage_account = {
  is_default : bool;  (** is_default *)
  storage_account_key : string;  (** storage_account_key *)
  storage_container_id : string;  (** storage_container_id *)
  storage_resource_id : string option; [@option]
      (** storage_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__storage_account *)

type azurerm_hdinsight_spark_cluster__storage_account_gen2 = {
  filesystem_id : string;  (** filesystem_id *)
  is_default : bool;  (** is_default *)
  managed_identity_resource_id : string;
      (** managed_identity_resource_id *)
  storage_resource_id : string;  (** storage_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__storage_account_gen2 *)

type azurerm_hdinsight_spark_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster__timeouts *)

type azurerm_hdinsight_spark_cluster = {
  cluster_version : string;  (** cluster_version *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tier : string;  (** tier *)
  tls_min_version : string option; [@option]  (** tls_min_version *)
  component_version :
    azurerm_hdinsight_spark_cluster__component_version list;
  compute_isolation :
    azurerm_hdinsight_spark_cluster__compute_isolation list;
  disk_encryption :
    azurerm_hdinsight_spark_cluster__disk_encryption list;
  extension : azurerm_hdinsight_spark_cluster__extension list;
  gateway : azurerm_hdinsight_spark_cluster__gateway list;
  metastores : azurerm_hdinsight_spark_cluster__metastores list;
  monitor : azurerm_hdinsight_spark_cluster__monitor list;
  network : azurerm_hdinsight_spark_cluster__network list;
  roles : azurerm_hdinsight_spark_cluster__roles list;
  security_profile :
    azurerm_hdinsight_spark_cluster__security_profile list;
  storage_account :
    azurerm_hdinsight_spark_cluster__storage_account list;
  storage_account_gen2 :
    azurerm_hdinsight_spark_cluster__storage_account_gen2 list;
  timeouts : azurerm_hdinsight_spark_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_spark_cluster *)

let azurerm_hdinsight_spark_cluster ?tags ?tls_min_version ?timeouts
    ~cluster_version ~location ~name ~resource_group_name ~tier
    ~component_version ~compute_isolation ~disk_encryption ~extension
    ~gateway ~metastores ~monitor ~network ~roles ~security_profile
    ~storage_account ~storage_account_gen2 __resource_id =
  let __resource_type = "azurerm_hdinsight_spark_cluster" in
  let __resource =
    {
      cluster_version;
      location;
      name;
      resource_group_name;
      tags;
      tier;
      tls_min_version;
      component_version;
      compute_isolation;
      disk_encryption;
      extension;
      gateway;
      metastores;
      monitor;
      network;
      roles;
      security_profile;
      storage_account;
      storage_account_gen2;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hdinsight_spark_cluster __resource);
  ()
