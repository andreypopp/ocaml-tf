(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_hdinsight_kafka_cluster__component_version = {
  kafka : string prop;  (** kafka *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__component_version *)

type azurerm_hdinsight_kafka_cluster__compute_isolation = {
  compute_isolation_enabled : bool prop option; [@option]
      (** compute_isolation_enabled *)
  host_sku : string prop option; [@option]  (** host_sku *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__compute_isolation *)

type azurerm_hdinsight_kafka_cluster__disk_encryption = {
  encryption_algorithm : string prop option; [@option]
      (** encryption_algorithm *)
  encryption_at_host_enabled : bool prop option; [@option]
      (** encryption_at_host_enabled *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  key_vault_managed_identity_id : string prop option; [@option]
      (** key_vault_managed_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__disk_encryption *)

type azurerm_hdinsight_kafka_cluster__extension = {
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  primary_key : string prop;  (** primary_key *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__extension *)

type azurerm_hdinsight_kafka_cluster__gateway = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__gateway *)

type azurerm_hdinsight_kafka_cluster__metastores__ambari = {
  database_name : string prop;  (** database_name *)
  password : string prop;  (** password *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__metastores__ambari *)

type azurerm_hdinsight_kafka_cluster__metastores__hive = {
  database_name : string prop;  (** database_name *)
  password : string prop;  (** password *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__metastores__hive *)

type azurerm_hdinsight_kafka_cluster__metastores__oozie = {
  database_name : string prop;  (** database_name *)
  password : string prop;  (** password *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__metastores__oozie *)

type azurerm_hdinsight_kafka_cluster__metastores = {
  ambari : azurerm_hdinsight_kafka_cluster__metastores__ambari list;
  hive : azurerm_hdinsight_kafka_cluster__metastores__hive list;
  oozie : azurerm_hdinsight_kafka_cluster__metastores__oozie list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__metastores *)

type azurerm_hdinsight_kafka_cluster__monitor = {
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  primary_key : string prop;  (** primary_key *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__monitor *)

type azurerm_hdinsight_kafka_cluster__network = {
  connection_direction : string prop option; [@option]
      (** connection_direction *)
  private_link_enabled : bool prop option; [@option]
      (** private_link_enabled *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__network *)

type azurerm_hdinsight_kafka_cluster__rest_proxy = {
  security_group_id : string prop;  (** security_group_id *)
  security_group_name : string prop;  (** security_group_name *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__rest_proxy *)

type azurerm_hdinsight_kafka_cluster__roles__head_node__script_actions = {
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles__head_node__script_actions *)

type azurerm_hdinsight_kafka_cluster__roles__head_node = {
  password : string prop option; [@option]  (** password *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  username : string prop;  (** username *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  vm_size : string prop;  (** vm_size *)
  script_actions :
    azurerm_hdinsight_kafka_cluster__roles__head_node__script_actions
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles__head_node *)

type azurerm_hdinsight_kafka_cluster__roles__kafka_management_node__script_actions = {
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles__kafka_management_node__script_actions *)

type azurerm_hdinsight_kafka_cluster__roles__kafka_management_node = {
  password : string prop option; [@option]  (** password *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  username : string prop;  (** username *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  vm_size : string prop;  (** vm_size *)
  script_actions :
    azurerm_hdinsight_kafka_cluster__roles__kafka_management_node__script_actions
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles__kafka_management_node *)

type azurerm_hdinsight_kafka_cluster__roles__worker_node__script_actions = {
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles__worker_node__script_actions *)

type azurerm_hdinsight_kafka_cluster__roles__worker_node = {
  number_of_disks_per_node : float prop;
      (** number_of_disks_per_node *)
  password : string prop option; [@option]  (** password *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  target_instance_count : float prop;  (** target_instance_count *)
  username : string prop;  (** username *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  vm_size : string prop;  (** vm_size *)
  script_actions :
    azurerm_hdinsight_kafka_cluster__roles__worker_node__script_actions
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles__worker_node *)

type azurerm_hdinsight_kafka_cluster__roles__zookeeper_node__script_actions = {
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles__zookeeper_node__script_actions *)

type azurerm_hdinsight_kafka_cluster__roles__zookeeper_node = {
  password : string prop option; [@option]  (** password *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  username : string prop;  (** username *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  vm_size : string prop;  (** vm_size *)
  script_actions :
    azurerm_hdinsight_kafka_cluster__roles__zookeeper_node__script_actions
    list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles__zookeeper_node *)

type azurerm_hdinsight_kafka_cluster__roles = {
  head_node : azurerm_hdinsight_kafka_cluster__roles__head_node list;
  kafka_management_node :
    azurerm_hdinsight_kafka_cluster__roles__kafka_management_node
    list;
  worker_node :
    azurerm_hdinsight_kafka_cluster__roles__worker_node list;
  zookeeper_node :
    azurerm_hdinsight_kafka_cluster__roles__zookeeper_node list;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__roles *)

type azurerm_hdinsight_kafka_cluster__security_profile = {
  aadds_resource_id : string prop;  (** aadds_resource_id *)
  cluster_users_group_dns : string prop list option; [@option]
      (** cluster_users_group_dns *)
  domain_name : string prop;  (** domain_name *)
  domain_user_password : string prop;  (** domain_user_password *)
  domain_username : string prop;  (** domain_username *)
  ldaps_urls : string prop list;  (** ldaps_urls *)
  msi_resource_id : string prop;  (** msi_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__security_profile *)

type azurerm_hdinsight_kafka_cluster__storage_account = {
  is_default : bool prop;  (** is_default *)
  storage_account_key : string prop;  (** storage_account_key *)
  storage_container_id : string prop;  (** storage_container_id *)
  storage_resource_id : string prop option; [@option]
      (** storage_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__storage_account *)

type azurerm_hdinsight_kafka_cluster__storage_account_gen2 = {
  filesystem_id : string prop;  (** filesystem_id *)
  is_default : bool prop;  (** is_default *)
  managed_identity_resource_id : string prop;
      (** managed_identity_resource_id *)
  storage_resource_id : string prop;  (** storage_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__storage_account_gen2 *)

type azurerm_hdinsight_kafka_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster__timeouts *)

type azurerm_hdinsight_kafka_cluster = {
  cluster_version : string prop;  (** cluster_version *)
  encryption_in_transit_enabled : bool prop option; [@option]
      (** encryption_in_transit_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tier : string prop;  (** tier *)
  tls_min_version : string prop option; [@option]
      (** tls_min_version *)
  component_version :
    azurerm_hdinsight_kafka_cluster__component_version list;
  compute_isolation :
    azurerm_hdinsight_kafka_cluster__compute_isolation list;
  disk_encryption :
    azurerm_hdinsight_kafka_cluster__disk_encryption list;
  extension : azurerm_hdinsight_kafka_cluster__extension list;
  gateway : azurerm_hdinsight_kafka_cluster__gateway list;
  metastores : azurerm_hdinsight_kafka_cluster__metastores list;
  monitor : azurerm_hdinsight_kafka_cluster__monitor list;
  network : azurerm_hdinsight_kafka_cluster__network list;
  rest_proxy : azurerm_hdinsight_kafka_cluster__rest_proxy list;
  roles : azurerm_hdinsight_kafka_cluster__roles list;
  security_profile :
    azurerm_hdinsight_kafka_cluster__security_profile list;
  storage_account :
    azurerm_hdinsight_kafka_cluster__storage_account list;
  storage_account_gen2 :
    azurerm_hdinsight_kafka_cluster__storage_account_gen2 list;
  timeouts : azurerm_hdinsight_kafka_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_kafka_cluster *)

type t = {
  cluster_version : string prop;
  encryption_in_transit_enabled : bool prop;
  https_endpoint : string prop;
  id : string prop;
  kafka_rest_proxy_endpoint : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  ssh_endpoint : string prop;
  tags : (string * string) list prop;
  tier : string prop;
  tls_min_version : string prop;
}

let azurerm_hdinsight_kafka_cluster ?encryption_in_transit_enabled
    ?id ?tags ?tls_min_version ?timeouts ~cluster_version ~location
    ~name ~resource_group_name ~tier ~component_version
    ~compute_isolation ~disk_encryption ~extension ~gateway
    ~metastores ~monitor ~network ~rest_proxy ~roles
    ~security_profile ~storage_account ~storage_account_gen2
    __resource_id =
  let __resource_type = "azurerm_hdinsight_kafka_cluster" in
  let __resource =
    ({
       cluster_version;
       encryption_in_transit_enabled;
       id;
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
       rest_proxy;
       roles;
       security_profile;
       storage_account;
       storage_account_gen2;
       timeouts;
     }
      : azurerm_hdinsight_kafka_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_hdinsight_kafka_cluster __resource);
  let __resource_attributes =
    ({
       cluster_version =
         Prop.computed __resource_type __resource_id
           "cluster_version";
       encryption_in_transit_enabled =
         Prop.computed __resource_type __resource_id
           "encryption_in_transit_enabled";
       https_endpoint =
         Prop.computed __resource_type __resource_id "https_endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       kafka_rest_proxy_endpoint =
         Prop.computed __resource_type __resource_id
           "kafka_rest_proxy_endpoint";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       ssh_endpoint =
         Prop.computed __resource_type __resource_id "ssh_endpoint";
       tags = Prop.computed __resource_type __resource_id "tags";
       tier = Prop.computed __resource_type __resource_id "tier";
       tls_min_version =
         Prop.computed __resource_type __resource_id
           "tls_min_version";
     }
      : t)
  in
  __resource_attributes
