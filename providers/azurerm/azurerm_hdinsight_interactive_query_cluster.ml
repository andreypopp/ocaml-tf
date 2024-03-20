(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type component_version = {
  interactive_hive : string prop;  (** interactive_hive *)
}
[@@deriving yojson_of]
(** component_version *)

type compute_isolation = {
  compute_isolation_enabled : bool prop option; [@option]
      (** compute_isolation_enabled *)
  host_sku : string prop option; [@option]  (** host_sku *)
}
[@@deriving yojson_of]
(** compute_isolation *)

type disk_encryption = {
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
(** disk_encryption *)

type extension = {
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  primary_key : string prop;  (** primary_key *)
}
[@@deriving yojson_of]
(** extension *)

type gateway = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** gateway *)

type metastores__ambari = {
  database_name : string prop;  (** database_name *)
  password : string prop;  (** password *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** metastores__ambari *)

type metastores__hive = {
  database_name : string prop;  (** database_name *)
  password : string prop;  (** password *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** metastores__hive *)

type metastores__oozie = {
  database_name : string prop;  (** database_name *)
  password : string prop;  (** password *)
  server : string prop;  (** server *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** metastores__oozie *)

type metastores = {
  ambari : metastores__ambari list;
  hive : metastores__hive list;
  oozie : metastores__oozie list;
}
[@@deriving yojson_of]
(** metastores *)

type monitor = {
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  primary_key : string prop;  (** primary_key *)
}
[@@deriving yojson_of]
(** monitor *)

type network = {
  connection_direction : string prop option; [@option]
      (** connection_direction *)
  private_link_enabled : bool prop option; [@option]
      (** private_link_enabled *)
}
[@@deriving yojson_of]
(** network *)

type roles__head_node__script_actions = {
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** roles__head_node__script_actions *)

type roles__head_node = {
  password : string prop option; [@option]  (** password *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  username : string prop;  (** username *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  vm_size : string prop;  (** vm_size *)
  script_actions : roles__head_node__script_actions list;
}
[@@deriving yojson_of]
(** roles__head_node *)

type roles__worker_node__autoscale__capacity = {
  max_instance_count : float prop;  (** max_instance_count *)
  min_instance_count : float prop;  (** min_instance_count *)
}
[@@deriving yojson_of]
(** roles__worker_node__autoscale__capacity *)

type roles__worker_node__autoscale__recurrence__schedule = {
  days : string prop list;  (** days *)
  target_instance_count : float prop;  (** target_instance_count *)
  time : string prop;  (** time *)
}
[@@deriving yojson_of]
(** roles__worker_node__autoscale__recurrence__schedule *)

type roles__worker_node__autoscale__recurrence = {
  timezone : string prop;  (** timezone *)
  schedule : roles__worker_node__autoscale__recurrence__schedule list;
}
[@@deriving yojson_of]
(** roles__worker_node__autoscale__recurrence *)

type roles__worker_node__autoscale = {
  capacity : roles__worker_node__autoscale__capacity list;
  recurrence : roles__worker_node__autoscale__recurrence list;
}
[@@deriving yojson_of]
(** roles__worker_node__autoscale *)

type roles__worker_node__script_actions = {
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** roles__worker_node__script_actions *)

type roles__worker_node = {
  password : string prop option; [@option]  (** password *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  target_instance_count : float prop;  (** target_instance_count *)
  username : string prop;  (** username *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  vm_size : string prop;  (** vm_size *)
  autoscale : roles__worker_node__autoscale list;
  script_actions : roles__worker_node__script_actions list;
}
[@@deriving yojson_of]
(** roles__worker_node *)

type roles__zookeeper_node__script_actions = {
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** roles__zookeeper_node__script_actions *)

type roles__zookeeper_node = {
  password : string prop option; [@option]  (** password *)
  ssh_keys : string prop list option; [@option]  (** ssh_keys *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  username : string prop;  (** username *)
  virtual_network_id : string prop option; [@option]
      (** virtual_network_id *)
  vm_size : string prop;  (** vm_size *)
  script_actions : roles__zookeeper_node__script_actions list;
}
[@@deriving yojson_of]
(** roles__zookeeper_node *)

type roles = {
  head_node : roles__head_node list;
  worker_node : roles__worker_node list;
  zookeeper_node : roles__zookeeper_node list;
}
[@@deriving yojson_of]
(** roles *)

type security_profile = {
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
(** security_profile *)

type storage_account = {
  is_default : bool prop;  (** is_default *)
  storage_account_key : string prop;  (** storage_account_key *)
  storage_container_id : string prop;  (** storage_container_id *)
  storage_resource_id : string prop option; [@option]
      (** storage_resource_id *)
}
[@@deriving yojson_of]
(** storage_account *)

type storage_account_gen2 = {
  filesystem_id : string prop;  (** filesystem_id *)
  is_default : bool prop;  (** is_default *)
  managed_identity_resource_id : string prop;
      (** managed_identity_resource_id *)
  storage_resource_id : string prop;  (** storage_resource_id *)
}
[@@deriving yojson_of]
(** storage_account_gen2 *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_hdinsight_interactive_query_cluster = {
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
  component_version : component_version list;
  compute_isolation : compute_isolation list;
  disk_encryption : disk_encryption list;
  extension : extension list;
  gateway : gateway list;
  metastores : metastores list;
  monitor : monitor list;
  network : network list;
  roles : roles list;
  security_profile : security_profile list;
  storage_account : storage_account list;
  storage_account_gen2 : storage_account_gen2 list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_hdinsight_interactive_query_cluster *)

let component_version ~interactive_hive () : component_version =
  { interactive_hive }

let compute_isolation ?compute_isolation_enabled ?host_sku () :
    compute_isolation =
  { compute_isolation_enabled; host_sku }

let disk_encryption ?encryption_algorithm ?encryption_at_host_enabled
    ?key_vault_key_id ?key_vault_managed_identity_id () :
    disk_encryption =
  {
    encryption_algorithm;
    encryption_at_host_enabled;
    key_vault_key_id;
    key_vault_managed_identity_id;
  }

let extension ~log_analytics_workspace_id ~primary_key () : extension
    =
  { log_analytics_workspace_id; primary_key }

let gateway ~password ~username () : gateway = { password; username }

let metastores__ambari ~database_name ~password ~server ~username ()
    : metastores__ambari =
  { database_name; password; server; username }

let metastores__hive ~database_name ~password ~server ~username () :
    metastores__hive =
  { database_name; password; server; username }

let metastores__oozie ~database_name ~password ~server ~username () :
    metastores__oozie =
  { database_name; password; server; username }

let metastores ~ambari ~hive ~oozie () : metastores =
  { ambari; hive; oozie }

let monitor ~log_analytics_workspace_id ~primary_key () : monitor =
  { log_analytics_workspace_id; primary_key }

let network ?connection_direction ?private_link_enabled () : network
    =
  { connection_direction; private_link_enabled }

let roles__head_node__script_actions ?parameters ~name ~uri () :
    roles__head_node__script_actions =
  { name; parameters; uri }

let roles__head_node ?password ?ssh_keys ?subnet_id
    ?virtual_network_id ~username ~vm_size ~script_actions () :
    roles__head_node =
  {
    password;
    ssh_keys;
    subnet_id;
    username;
    virtual_network_id;
    vm_size;
    script_actions;
  }

let roles__worker_node__autoscale__capacity ~max_instance_count
    ~min_instance_count () : roles__worker_node__autoscale__capacity
    =
  { max_instance_count; min_instance_count }

let roles__worker_node__autoscale__recurrence__schedule ~days
    ~target_instance_count ~time () :
    roles__worker_node__autoscale__recurrence__schedule =
  { days; target_instance_count; time }

let roles__worker_node__autoscale__recurrence ~timezone ~schedule ()
    : roles__worker_node__autoscale__recurrence =
  { timezone; schedule }

let roles__worker_node__autoscale ~capacity ~recurrence () :
    roles__worker_node__autoscale =
  { capacity; recurrence }

let roles__worker_node__script_actions ?parameters ~name ~uri () :
    roles__worker_node__script_actions =
  { name; parameters; uri }

let roles__worker_node ?password ?ssh_keys ?subnet_id
    ?virtual_network_id ~target_instance_count ~username ~vm_size
    ~autoscale ~script_actions () : roles__worker_node =
  {
    password;
    ssh_keys;
    subnet_id;
    target_instance_count;
    username;
    virtual_network_id;
    vm_size;
    autoscale;
    script_actions;
  }

let roles__zookeeper_node__script_actions ?parameters ~name ~uri () :
    roles__zookeeper_node__script_actions =
  { name; parameters; uri }

let roles__zookeeper_node ?password ?ssh_keys ?subnet_id
    ?virtual_network_id ~username ~vm_size ~script_actions () :
    roles__zookeeper_node =
  {
    password;
    ssh_keys;
    subnet_id;
    username;
    virtual_network_id;
    vm_size;
    script_actions;
  }

let roles ~head_node ~worker_node ~zookeeper_node () : roles =
  { head_node; worker_node; zookeeper_node }

let security_profile ?cluster_users_group_dns ~aadds_resource_id
    ~domain_name ~domain_user_password ~domain_username ~ldaps_urls
    ~msi_resource_id () : security_profile =
  {
    aadds_resource_id;
    cluster_users_group_dns;
    domain_name;
    domain_user_password;
    domain_username;
    ldaps_urls;
    msi_resource_id;
  }

let storage_account ?storage_resource_id ~is_default
    ~storage_account_key ~storage_container_id () : storage_account =
  {
    is_default;
    storage_account_key;
    storage_container_id;
    storage_resource_id;
  }

let storage_account_gen2 ~filesystem_id ~is_default
    ~managed_identity_resource_id ~storage_resource_id () :
    storage_account_gen2 =
  {
    filesystem_id;
    is_default;
    managed_identity_resource_id;
    storage_resource_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_hdinsight_interactive_query_cluster
    ?encryption_in_transit_enabled ?id ?tags ?tls_min_version
    ?timeouts ~cluster_version ~location ~name ~resource_group_name
    ~tier ~component_version ~compute_isolation ~disk_encryption
    ~extension ~gateway ~metastores ~monitor ~network ~roles
    ~security_profile ~storage_account ~storage_account_gen2 () :
    azurerm_hdinsight_interactive_query_cluster =
  {
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
    roles;
    security_profile;
    storage_account;
    storage_account_gen2;
    timeouts;
  }

type t = {
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

let make ?encryption_in_transit_enabled ?id ?tags ?tls_min_version
    ?timeouts ~cluster_version ~location ~name ~resource_group_name
    ~tier ~component_version ~compute_isolation ~disk_encryption
    ~extension ~gateway ~metastores ~monitor ~network ~roles
    ~security_profile ~storage_account ~storage_account_gen2 __id =
  let __type = "azurerm_hdinsight_interactive_query_cluster" in
  let __attrs =
    ({
       cluster_version = Prop.computed __type __id "cluster_version";
       encryption_in_transit_enabled =
         Prop.computed __type __id "encryption_in_transit_enabled";
       https_endpoint = Prop.computed __type __id "https_endpoint";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       ssh_endpoint = Prop.computed __type __id "ssh_endpoint";
       tags = Prop.computed __type __id "tags";
       tier = Prop.computed __type __id "tier";
       tls_min_version = Prop.computed __type __id "tls_min_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_hdinsight_interactive_query_cluster
        (azurerm_hdinsight_interactive_query_cluster
           ?encryption_in_transit_enabled ?id ?tags ?tls_min_version
           ?timeouts ~cluster_version ~location ~name
           ~resource_group_name ~tier ~component_version
           ~compute_isolation ~disk_encryption ~extension ~gateway
           ~metastores ~monitor ~network ~roles ~security_profile
           ~storage_account ~storage_account_gen2 ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_in_transit_enabled ?id ?tags
    ?tls_min_version ?timeouts ~cluster_version ~location ~name
    ~resource_group_name ~tier ~component_version ~compute_isolation
    ~disk_encryption ~extension ~gateway ~metastores ~monitor
    ~network ~roles ~security_profile ~storage_account
    ~storage_account_gen2 __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_in_transit_enabled ?id ?tags ?tls_min_version
      ?timeouts ~cluster_version ~location ~name ~resource_group_name
      ~tier ~component_version ~compute_isolation ~disk_encryption
      ~extension ~gateway ~metastores ~monitor ~network ~roles
      ~security_profile ~storage_account ~storage_account_gen2 __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
