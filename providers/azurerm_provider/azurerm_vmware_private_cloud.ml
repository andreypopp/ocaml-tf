(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vmware_private_cloud__management_cluster = {
  hosts : string prop list;  (** hosts *)
  id : float prop;  (** id *)
  size : float prop;  (** size *)
}
[@@deriving yojson_of]
(** azurerm_vmware_private_cloud__management_cluster *)

type azurerm_vmware_private_cloud__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vmware_private_cloud__timeouts *)

type azurerm_vmware_private_cloud__circuit = {
  express_route_id : string prop;  (** express_route_id *)
  express_route_private_peering_id : string prop;
      (** express_route_private_peering_id *)
  primary_subnet_cidr : string prop;  (** primary_subnet_cidr *)
  secondary_subnet_cidr : string prop;  (** secondary_subnet_cidr *)
}
[@@deriving yojson_of]

type azurerm_vmware_private_cloud = {
  id : string prop option; [@option]  (** id *)
  internet_connection_enabled : bool prop option; [@option]
      (** internet_connection_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_subnet_cidr : string prop;  (** network_subnet_cidr *)
  nsxt_password : string prop option; [@option]  (** nsxt_password *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  vcenter_password : string prop option; [@option]
      (** vcenter_password *)
  management_cluster :
    azurerm_vmware_private_cloud__management_cluster list;
  timeouts : azurerm_vmware_private_cloud__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_private_cloud *)

type t = {
  circuit : azurerm_vmware_private_cloud__circuit list prop;
  hcx_cloud_manager_endpoint : string prop;
  id : string prop;
  internet_connection_enabled : bool prop;
  location : string prop;
  management_subnet_cidr : string prop;
  name : string prop;
  network_subnet_cidr : string prop;
  nsxt_certificate_thumbprint : string prop;
  nsxt_manager_endpoint : string prop;
  nsxt_password : string prop;
  provisioning_subnet_cidr : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  vcenter_certificate_thumbprint : string prop;
  vcenter_password : string prop;
  vcsa_endpoint : string prop;
  vmotion_subnet_cidr : string prop;
}

let azurerm_vmware_private_cloud ?id ?internet_connection_enabled
    ?nsxt_password ?tags ?vcenter_password ?timeouts ~location ~name
    ~network_subnet_cidr ~resource_group_name ~sku_name
    ~management_cluster __resource_id =
  let __resource_type = "azurerm_vmware_private_cloud" in
  let __resource =
    ({
       id;
       internet_connection_enabled;
       location;
       name;
       network_subnet_cidr;
       nsxt_password;
       resource_group_name;
       sku_name;
       tags;
       vcenter_password;
       management_cluster;
       timeouts;
     }
      : azurerm_vmware_private_cloud)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_private_cloud __resource);
  let __resource_attributes =
    ({
       circuit =
         Prop.computed __resource_type __resource_id "circuit";
       hcx_cloud_manager_endpoint =
         Prop.computed __resource_type __resource_id
           "hcx_cloud_manager_endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       internet_connection_enabled =
         Prop.computed __resource_type __resource_id
           "internet_connection_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       management_subnet_cidr =
         Prop.computed __resource_type __resource_id
           "management_subnet_cidr";
       name = Prop.computed __resource_type __resource_id "name";
       network_subnet_cidr =
         Prop.computed __resource_type __resource_id
           "network_subnet_cidr";
       nsxt_certificate_thumbprint =
         Prop.computed __resource_type __resource_id
           "nsxt_certificate_thumbprint";
       nsxt_manager_endpoint =
         Prop.computed __resource_type __resource_id
           "nsxt_manager_endpoint";
       nsxt_password =
         Prop.computed __resource_type __resource_id "nsxt_password";
       provisioning_subnet_cidr =
         Prop.computed __resource_type __resource_id
           "provisioning_subnet_cidr";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       vcenter_certificate_thumbprint =
         Prop.computed __resource_type __resource_id
           "vcenter_certificate_thumbprint";
       vcenter_password =
         Prop.computed __resource_type __resource_id
           "vcenter_password";
       vcsa_endpoint =
         Prop.computed __resource_type __resource_id "vcsa_endpoint";
       vmotion_subnet_cidr =
         Prop.computed __resource_type __resource_id
           "vmotion_subnet_cidr";
     }
      : t)
  in
  __resource_attributes
