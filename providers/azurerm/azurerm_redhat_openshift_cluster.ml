(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type api_server_profile = {
  visibility : string prop;  (** visibility *)
}
[@@deriving yojson_of]
(** api_server_profile *)

type cluster_profile = {
  domain : string prop;  (** domain *)
  fips_enabled : bool prop option; [@option]  (** fips_enabled *)
  pull_secret : string prop option; [@option]  (** pull_secret *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** cluster_profile *)

type ingress_profile = {
  visibility : string prop;  (** visibility *)
}
[@@deriving yojson_of]
(** ingress_profile *)

type main_profile = {
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  encryption_at_host_enabled : bool prop option; [@option]
      (** encryption_at_host_enabled *)
  subnet_id : string prop;  (** subnet_id *)
  vm_size : string prop;  (** vm_size *)
}
[@@deriving yojson_of]
(** main_profile *)

type network_profile = {
  outbound_type : string prop option; [@option]  (** outbound_type *)
  pod_cidr : string prop;  (** pod_cidr *)
  service_cidr : string prop;  (** service_cidr *)
}
[@@deriving yojson_of]
(** network_profile *)

type service_principal = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
}
[@@deriving yojson_of]
(** service_principal *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type worker_profile = {
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float prop;  (** disk_size_gb *)
  encryption_at_host_enabled : bool prop option; [@option]
      (** encryption_at_host_enabled *)
  node_count : float prop;  (** node_count *)
  subnet_id : string prop;  (** subnet_id *)
  vm_size : string prop;  (** vm_size *)
}
[@@deriving yojson_of]
(** worker_profile *)

type azurerm_redhat_openshift_cluster = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  api_server_profile : api_server_profile list;
  cluster_profile : cluster_profile list;
  ingress_profile : ingress_profile list;
  main_profile : main_profile list;
  network_profile : network_profile list;
  service_principal : service_principal list;
  timeouts : timeouts option;
  worker_profile : worker_profile list;
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster *)

let api_server_profile ~visibility () : api_server_profile =
  { visibility }

let cluster_profile ?fips_enabled ?pull_secret ~domain ~version () :
    cluster_profile =
  { domain; fips_enabled; pull_secret; version }

let ingress_profile ~visibility () : ingress_profile = { visibility }

let main_profile ?disk_encryption_set_id ?encryption_at_host_enabled
    ~subnet_id ~vm_size () : main_profile =
  {
    disk_encryption_set_id;
    encryption_at_host_enabled;
    subnet_id;
    vm_size;
  }

let network_profile ?outbound_type ~pod_cidr ~service_cidr () :
    network_profile =
  { outbound_type; pod_cidr; service_cidr }

let service_principal ~client_id ~client_secret () :
    service_principal =
  { client_id; client_secret }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let worker_profile ?disk_encryption_set_id
    ?encryption_at_host_enabled ~disk_size_gb ~node_count ~subnet_id
    ~vm_size () : worker_profile =
  {
    disk_encryption_set_id;
    disk_size_gb;
    encryption_at_host_enabled;
    node_count;
    subnet_id;
    vm_size;
  }

let azurerm_redhat_openshift_cluster ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~api_server_profile ~cluster_profile
    ~ingress_profile ~main_profile ~network_profile
    ~service_principal ~worker_profile () :
    azurerm_redhat_openshift_cluster =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    api_server_profile;
    cluster_profile;
    ingress_profile;
    main_profile;
    network_profile;
    service_principal;
    timeouts;
    worker_profile;
  }

type t = {
  console_url : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~api_server_profile ~cluster_profile
    ~ingress_profile ~main_profile ~network_profile
    ~service_principal ~worker_profile __resource_id =
  let __resource_type = "azurerm_redhat_openshift_cluster" in
  let __resource =
    azurerm_redhat_openshift_cluster ?id ?tags ?timeouts ~location
      ~name ~resource_group_name ~api_server_profile ~cluster_profile
      ~ingress_profile ~main_profile ~network_profile
      ~service_principal ~worker_profile ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redhat_openshift_cluster __resource);
  let __resource_attributes =
    ({
       console_url =
         Prop.computed __resource_type __resource_id "console_url";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
