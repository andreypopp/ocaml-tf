(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcx = {
  fqdn : string prop;
  internal_ip : string prop;
  state : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcx) -> ()

let yojson_of_hcx =
  (function
   | {
       fqdn = v_fqdn;
       internal_ip = v_internal_ip;
       state = v_state;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_internal_ip in
         ("internal_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : hcx -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcx

[@@@deriving.end]

type management_cluster__node_type_configs = {
  custom_core_count : float prop;
  node_count : float prop;
  node_type_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_cluster__node_type_configs) -> ()

let yojson_of_management_cluster__node_type_configs =
  (function
   | {
       custom_core_count = v_custom_core_count;
       node_count = v_node_count;
       node_type_id = v_node_type_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type_id in
         ("node_type_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_custom_core_count
         in
         ("custom_core_count", arg) :: bnds
       in
       `Assoc bnds
    : management_cluster__node_type_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_cluster__node_type_configs

[@@@deriving.end]

type management_cluster = {
  cluster_id : string prop;
  node_type_configs : management_cluster__node_type_configs list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_cluster) -> ()

let yojson_of_management_cluster =
  (function
   | {
       cluster_id = v_cluster_id;
       node_type_configs = v_node_type_configs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_node_type_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_management_cluster__node_type_configs)
               v_node_type_configs
           in
           let bnd = "node_type_configs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : management_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_cluster

[@@@deriving.end]

type network_config = {
  dns_server_ip : string prop;
  management_cidr : string prop;
  management_ip_address_layout_version : float prop;
  vmware_engine_network : string prop;
  vmware_engine_network_canonical : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       dns_server_ip = v_dns_server_ip;
       management_cidr = v_management_cidr;
       management_ip_address_layout_version =
         v_management_ip_address_layout_version;
       vmware_engine_network = v_vmware_engine_network;
       vmware_engine_network_canonical =
         v_vmware_engine_network_canonical;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_vmware_engine_network_canonical
         in
         ("vmware_engine_network_canonical", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vmware_engine_network
         in
         ("vmware_engine_network", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_management_ip_address_layout_version
         in
         ("management_ip_address_layout_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_management_cidr
         in
         ("management_cidr", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_server_ip in
         ("dns_server_ip", arg) :: bnds
       in
       `Assoc bnds
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

[@@@deriving.end]

type nsx = {
  fqdn : string prop;
  internal_ip : string prop;
  state : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nsx) -> ()

let yojson_of_nsx =
  (function
   | {
       fqdn = v_fqdn;
       internal_ip = v_internal_ip;
       state = v_state;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_internal_ip in
         ("internal_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : nsx -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nsx

[@@@deriving.end]

type vcenter = {
  fqdn : string prop;
  internal_ip : string prop;
  state : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vcenter) -> ()

let yojson_of_vcenter =
  (function
   | {
       fqdn = v_fqdn;
       internal_ip = v_internal_ip;
       state = v_state;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_internal_ip in
         ("internal_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : vcenter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vcenter

[@@@deriving.end]

type google_vmwareengine_private_cloud = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_private_cloud) -> ()

let yojson_of_google_vmwareengine_private_cloud =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : google_vmwareengine_private_cloud ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_private_cloud

[@@@deriving.end]

let google_vmwareengine_private_cloud ?id ?project ~location ~name ()
    : google_vmwareengine_private_cloud =
  { id; location; name; project }

type t = {
  tf_name : string;
  description : string prop;
  hcx : hcx list prop;
  id : string prop;
  location : string prop;
  management_cluster : management_cluster list prop;
  name : string prop;
  network_config : network_config list prop;
  nsx : nsx list prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vcenter : vcenter list prop;
}

let make ?id ?project ~location ~name __id =
  let __type = "google_vmwareengine_private_cloud" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       hcx = Prop.computed __type __id "hcx";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       management_cluster =
         Prop.computed __type __id "management_cluster";
       name = Prop.computed __type __id "name";
       network_config = Prop.computed __type __id "network_config";
       nsx = Prop.computed __type __id "nsx";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       vcenter = Prop.computed __type __id "vcenter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_private_cloud
        (google_vmwareengine_private_cloud ?id ?project ~location
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
