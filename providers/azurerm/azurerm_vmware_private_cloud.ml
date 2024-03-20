(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type management_cluster = { size : float prop  (** size *) }
[@@deriving yojson_of]
(** management_cluster *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type circuit = {
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
  management_cluster : management_cluster list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_private_cloud *)

let management_cluster ~size () : management_cluster = { size }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vmware_private_cloud ?id ?internet_connection_enabled
    ?nsxt_password ?tags ?vcenter_password ?timeouts ~location ~name
    ~network_subnet_cidr ~resource_group_name ~sku_name
    ~management_cluster () : azurerm_vmware_private_cloud =
  {
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

type t = {
  circuit : circuit list prop;
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

let make ?id ?internet_connection_enabled ?nsxt_password ?tags
    ?vcenter_password ?timeouts ~location ~name ~network_subnet_cidr
    ~resource_group_name ~sku_name ~management_cluster __id =
  let __type = "azurerm_vmware_private_cloud" in
  let __attrs =
    ({
       circuit = Prop.computed __type __id "circuit";
       hcx_cloud_manager_endpoint =
         Prop.computed __type __id "hcx_cloud_manager_endpoint";
       id = Prop.computed __type __id "id";
       internet_connection_enabled =
         Prop.computed __type __id "internet_connection_enabled";
       location = Prop.computed __type __id "location";
       management_subnet_cidr =
         Prop.computed __type __id "management_subnet_cidr";
       name = Prop.computed __type __id "name";
       network_subnet_cidr =
         Prop.computed __type __id "network_subnet_cidr";
       nsxt_certificate_thumbprint =
         Prop.computed __type __id "nsxt_certificate_thumbprint";
       nsxt_manager_endpoint =
         Prop.computed __type __id "nsxt_manager_endpoint";
       nsxt_password = Prop.computed __type __id "nsxt_password";
       provisioning_subnet_cidr =
         Prop.computed __type __id "provisioning_subnet_cidr";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       vcenter_certificate_thumbprint =
         Prop.computed __type __id "vcenter_certificate_thumbprint";
       vcenter_password =
         Prop.computed __type __id "vcenter_password";
       vcsa_endpoint = Prop.computed __type __id "vcsa_endpoint";
       vmotion_subnet_cidr =
         Prop.computed __type __id "vmotion_subnet_cidr";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vmware_private_cloud
        (azurerm_vmware_private_cloud ?id
           ?internet_connection_enabled ?nsxt_password ?tags
           ?vcenter_password ?timeouts ~location ~name
           ~network_subnet_cidr ~resource_group_name ~sku_name
           ~management_cluster ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?internet_connection_enabled
    ?nsxt_password ?tags ?vcenter_password ?timeouts ~location ~name
    ~network_subnet_cidr ~resource_group_name ~sku_name
    ~management_cluster __id =
  let (r : _ Tf_core.resource) =
    make ?id ?internet_connection_enabled ?nsxt_password ?tags
      ?vcenter_password ?timeouts ~location ~name
      ~network_subnet_cidr ~resource_group_name ~sku_name
      ~management_cluster __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
