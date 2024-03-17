(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_vmware_private_cloud__management_cluster = {
  hosts : string list;  (** hosts *)
  id : float;  (** id *)
  size : float;  (** size *)
}
[@@deriving yojson_of]
(** azurerm_vmware_private_cloud__management_cluster *)

type azurerm_vmware_private_cloud__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vmware_private_cloud__timeouts *)

type azurerm_vmware_private_cloud__circuit = {
  express_route_id : string;  (** express_route_id *)
  express_route_private_peering_id : string;
      (** express_route_private_peering_id *)
  primary_subnet_cidr : string;  (** primary_subnet_cidr *)
  secondary_subnet_cidr : string;  (** secondary_subnet_cidr *)
}
[@@deriving yojson_of]

type azurerm_vmware_private_cloud = {
  internet_connection_enabled : bool option; [@option]
      (** internet_connection_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  network_subnet_cidr : string;  (** network_subnet_cidr *)
  nsxt_password : string option; [@option]  (** nsxt_password *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  vcenter_password : string option; [@option]
      (** vcenter_password *)
  management_cluster :
    azurerm_vmware_private_cloud__management_cluster list;
  timeouts : azurerm_vmware_private_cloud__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_private_cloud *)

let azurerm_vmware_private_cloud ?internet_connection_enabled
    ?nsxt_password ?tags ?vcenter_password ?timeouts ~location ~name
    ~network_subnet_cidr ~resource_group_name ~sku_name
    ~management_cluster __resource_id =
  let __resource_type = "azurerm_vmware_private_cloud" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_private_cloud __resource);
  ()
