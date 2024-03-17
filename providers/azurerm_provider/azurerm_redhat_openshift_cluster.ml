(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redhat_openshift_cluster__api_server_profile = {
  ip_address : string prop;  (** ip_address *)
  url : string prop;  (** url *)
  visibility : string prop;  (** visibility *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__api_server_profile *)

type azurerm_redhat_openshift_cluster__cluster_profile = {
  domain : string prop;  (** domain *)
  fips_enabled : bool prop option; [@option]  (** fips_enabled *)
  pull_secret : string prop option; [@option]  (** pull_secret *)
  resource_group_id : string prop;  (** resource_group_id *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__cluster_profile *)

type azurerm_redhat_openshift_cluster__ingress_profile = {
  ip_address : string prop;  (** ip_address *)
  name : string prop;  (** name *)
  visibility : string prop;  (** visibility *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__ingress_profile *)

type azurerm_redhat_openshift_cluster__main_profile = {
  disk_encryption_set_id : string prop option; [@option]
      (** disk_encryption_set_id *)
  encryption_at_host_enabled : bool prop option; [@option]
      (** encryption_at_host_enabled *)
  subnet_id : string prop;  (** subnet_id *)
  vm_size : string prop;  (** vm_size *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__main_profile *)

type azurerm_redhat_openshift_cluster__network_profile = {
  outbound_type : string prop option; [@option]  (** outbound_type *)
  pod_cidr : string prop;  (** pod_cidr *)
  service_cidr : string prop;  (** service_cidr *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__network_profile *)

type azurerm_redhat_openshift_cluster__service_principal = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__service_principal *)

type azurerm_redhat_openshift_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__timeouts *)

type azurerm_redhat_openshift_cluster__worker_profile = {
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
(** azurerm_redhat_openshift_cluster__worker_profile *)

type azurerm_redhat_openshift_cluster = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  api_server_profile :
    azurerm_redhat_openshift_cluster__api_server_profile list;
  cluster_profile :
    azurerm_redhat_openshift_cluster__cluster_profile list;
  ingress_profile :
    azurerm_redhat_openshift_cluster__ingress_profile list;
  main_profile : azurerm_redhat_openshift_cluster__main_profile list;
  network_profile :
    azurerm_redhat_openshift_cluster__network_profile list;
  service_principal :
    azurerm_redhat_openshift_cluster__service_principal list;
  timeouts : azurerm_redhat_openshift_cluster__timeouts option;
  worker_profile :
    azurerm_redhat_openshift_cluster__worker_profile list;
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster *)

let azurerm_redhat_openshift_cluster ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~api_server_profile ~cluster_profile
    ~ingress_profile ~main_profile ~network_profile
    ~service_principal ~worker_profile __resource_id =
  let __resource_type = "azurerm_redhat_openshift_cluster" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redhat_openshift_cluster __resource);
  ()
