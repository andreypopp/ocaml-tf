(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type circuit = {
  express_route_id : string prop;
  express_route_private_peering_id : string prop;
  primary_subnet_cidr : string prop;
  secondary_subnet_cidr : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : circuit) -> ()

let yojson_of_circuit =
  (function
   | {
       express_route_id = v_express_route_id;
       express_route_private_peering_id =
         v_express_route_private_peering_id;
       primary_subnet_cidr = v_primary_subnet_cidr;
       secondary_subnet_cidr = v_secondary_subnet_cidr;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secondary_subnet_cidr
         in
         ("secondary_subnet_cidr", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_subnet_cidr
         in
         ("primary_subnet_cidr", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_express_route_private_peering_id
         in
         ("express_route_private_peering_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_express_route_id
         in
         ("express_route_id", arg) :: bnds
       in
       `Assoc bnds
    : circuit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_circuit

[@@@deriving.end]

type management_cluster = {
  hosts : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : float prop;
  size : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_cluster) -> ()

let yojson_of_management_cluster =
  (function
   | { hosts = v_hosts; id = v_id; size = v_size } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_hosts then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_hosts
           in
           let bnd = "hosts", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : management_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_cluster

[@@@deriving.end]

type azurerm_vmware_private_cloud = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vmware_private_cloud) -> ()

let yojson_of_azurerm_vmware_private_cloud =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_vmware_private_cloud ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vmware_private_cloud

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_vmware_private_cloud ?id ?timeouts ~name
    ~resource_group_name () : azurerm_vmware_private_cloud =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  circuit : circuit list prop;
  hcx_cloud_manager_endpoint : string prop;
  id : string prop;
  internet_connection_enabled : bool prop;
  location : string prop;
  management_cluster : management_cluster list prop;
  management_subnet_cidr : string prop;
  name : string prop;
  network_subnet_cidr : string prop;
  nsxt_certificate_thumbprint : string prop;
  nsxt_manager_endpoint : string prop;
  provisioning_subnet_cidr : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
  vcenter_certificate_thumbprint : string prop;
  vcsa_endpoint : string prop;
  vmotion_subnet_cidr : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_vmware_private_cloud" in
  let __attrs =
    ({
       tf_name = __id;
       circuit = Prop.computed __type __id "circuit";
       hcx_cloud_manager_endpoint =
         Prop.computed __type __id "hcx_cloud_manager_endpoint";
       id = Prop.computed __type __id "id";
       internet_connection_enabled =
         Prop.computed __type __id "internet_connection_enabled";
       location = Prop.computed __type __id "location";
       management_cluster =
         Prop.computed __type __id "management_cluster";
       management_subnet_cidr =
         Prop.computed __type __id "management_subnet_cidr";
       name = Prop.computed __type __id "name";
       network_subnet_cidr =
         Prop.computed __type __id "network_subnet_cidr";
       nsxt_certificate_thumbprint =
         Prop.computed __type __id "nsxt_certificate_thumbprint";
       nsxt_manager_endpoint =
         Prop.computed __type __id "nsxt_manager_endpoint";
       provisioning_subnet_cidr =
         Prop.computed __type __id "provisioning_subnet_cidr";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       vcenter_certificate_thumbprint =
         Prop.computed __type __id "vcenter_certificate_thumbprint";
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
        (azurerm_vmware_private_cloud ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
