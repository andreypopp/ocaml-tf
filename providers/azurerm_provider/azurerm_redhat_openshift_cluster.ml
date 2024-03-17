(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redhat_openshift_cluster__api_server_profile = {
  ip_address : string;  (** ip_address *)
  url : string;  (** url *)
  visibility : string;  (** visibility *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__api_server_profile *)

type azurerm_redhat_openshift_cluster__cluster_profile = {
  domain : string;  (** domain *)
  fips_enabled : bool option; [@option]  (** fips_enabled *)
  pull_secret : string option; [@option]  (** pull_secret *)
  resource_group_id : string;  (** resource_group_id *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__cluster_profile *)

type azurerm_redhat_openshift_cluster__ingress_profile = {
  ip_address : string;  (** ip_address *)
  name : string;  (** name *)
  visibility : string;  (** visibility *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__ingress_profile *)

type azurerm_redhat_openshift_cluster__main_profile = {
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  encryption_at_host_enabled : bool option; [@option]
      (** encryption_at_host_enabled *)
  subnet_id : string;  (** subnet_id *)
  vm_size : string;  (** vm_size *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__main_profile *)

type azurerm_redhat_openshift_cluster__network_profile = {
  outbound_type : string option; [@option]  (** outbound_type *)
  pod_cidr : string;  (** pod_cidr *)
  service_cidr : string;  (** service_cidr *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__network_profile *)

type azurerm_redhat_openshift_cluster__service_principal = {
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__service_principal *)

type azurerm_redhat_openshift_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__timeouts *)

type azurerm_redhat_openshift_cluster__worker_profile = {
  disk_encryption_set_id : string option; [@option]
      (** disk_encryption_set_id *)
  disk_size_gb : float;  (** disk_size_gb *)
  encryption_at_host_enabled : bool option; [@option]
      (** encryption_at_host_enabled *)
  node_count : float;  (** node_count *)
  subnet_id : string;  (** subnet_id *)
  vm_size : string;  (** vm_size *)
}
[@@deriving yojson_of]
(** azurerm_redhat_openshift_cluster__worker_profile *)

type azurerm_redhat_openshift_cluster = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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
