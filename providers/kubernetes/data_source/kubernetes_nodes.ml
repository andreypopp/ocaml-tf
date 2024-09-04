(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = { labels : string prop Tf_core.assoc }
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | { labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_labels
         in
         ("labels", arg) :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type nodes__status__node_info = {
  architecture : string prop;
  boot_id : string prop;
  container_runtime_version : string prop;
  kernel_version : string prop;
  kube_proxy_version : string prop;
  kubelet_version : string prop;
  machine_id : string prop;
  operating_system : string prop;
  os_image : string prop;
  system_uuid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes__status__node_info) -> ()

let yojson_of_nodes__status__node_info =
  (function
   | {
       architecture = v_architecture;
       boot_id = v_boot_id;
       container_runtime_version = v_container_runtime_version;
       kernel_version = v_kernel_version;
       kube_proxy_version = v_kube_proxy_version;
       kubelet_version = v_kubelet_version;
       machine_id = v_machine_id;
       operating_system = v_operating_system;
       os_image = v_os_image;
       system_uuid = v_system_uuid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_system_uuid in
         ("system_uuid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_os_image in
         ("os_image", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_operating_system
         in
         ("operating_system", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_id in
         ("machine_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kubelet_version
         in
         ("kubelet_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kube_proxy_version
         in
         ("kube_proxy_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kernel_version
         in
         ("kernel_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_container_runtime_version
         in
         ("container_runtime_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_boot_id in
         ("boot_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_architecture in
         ("architecture", arg) :: bnds
       in
       `Assoc bnds
    : nodes__status__node_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes__status__node_info

[@@@deriving.end]

type nodes__status__addresses = {
  address : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes__status__addresses) -> ()

let yojson_of_nodes__status__addresses =
  (function
   | { address = v_address; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : nodes__status__addresses -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes__status__addresses

[@@@deriving.end]

type nodes__status = {
  addresses : nodes__status__addresses list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allocatable : string prop Tf_core.assoc;
  capacity : string prop Tf_core.assoc;
  node_info : nodes__status__node_info list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes__status) -> ()

let yojson_of_nodes__status =
  (function
   | {
       addresses = v_addresses;
       allocatable = v_allocatable;
       capacity = v_capacity;
       node_info = v_node_info;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_node_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_nodes__status__node_info)
               v_node_info
           in
           let bnd = "node_info", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_capacity
         in
         ("capacity", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_allocatable
         in
         ("allocatable", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_addresses then bnds
         else
           let arg =
             (yojson_of_list yojson_of_nodes__status__addresses)
               v_addresses
           in
           let bnd = "addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : nodes__status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes__status

[@@@deriving.end]

type nodes__spec__taints = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes__spec__taints) -> ()

let yojson_of_nodes__spec__taints =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : nodes__spec__taints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes__spec__taints

[@@@deriving.end]

type nodes__spec = {
  pod_cidr : string prop;
  pod_cidrs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  provider_id : string prop;
  taints : nodes__spec__taints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unschedulable : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes__spec) -> ()

let yojson_of_nodes__spec =
  (function
   | {
       pod_cidr = v_pod_cidr;
       pod_cidrs = v_pod_cidrs;
       provider_id = v_provider_id;
       taints = v_taints;
       unschedulable = v_unschedulable;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_unschedulable in
         ("unschedulable", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_taints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_nodes__spec__taints) v_taints
           in
           let bnd = "taints", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_id in
         ("provider_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pod_cidrs then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_pod_cidrs
           in
           let bnd = "pod_cidrs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pod_cidr in
         ("pod_cidr", arg) :: bnds
       in
       `Assoc bnds
    : nodes__spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes__spec

[@@@deriving.end]

type nodes__metadata = {
  annotations : string prop Tf_core.assoc;
  generation : float prop;
  labels : string prop Tf_core.assoc;
  name : string prop;
  resource_version : string prop;
  uid : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes__metadata) -> ()

let yojson_of_nodes__metadata =
  (function
   | {
       annotations = v_annotations;
       generation = v_generation;
       labels = v_labels;
       name = v_name;
       resource_version = v_resource_version;
       uid = v_uid;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uid in
         ("uid", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_version
         in
         ("resource_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_generation in
         ("generation", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_annotations
         in
         ("annotations", arg) :: bnds
       in
       `Assoc bnds
    : nodes__metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes__metadata

[@@@deriving.end]

type nodes = {
  metadata : nodes__metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spec : nodes__spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  status : nodes__status list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nodes) -> ()

let yojson_of_nodes =
  (function
   | { metadata = v_metadata; spec = v_spec; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_status then bnds
         else
           let arg =
             (yojson_of_list yojson_of_nodes__status) v_status
           in
           let bnd = "status", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_spec then bnds
         else
           let arg = (yojson_of_list yojson_of_nodes__spec) v_spec in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_nodes__metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nodes

[@@@deriving.end]

type kubernetes_nodes = {
  id : string prop option; [@option]
  metadata : metadata list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_nodes) -> ()

let yojson_of_kubernetes_nodes =
  (function
   | { id = v_id; metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
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
    : kubernetes_nodes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_nodes

[@@@deriving.end]

let metadata ~labels () : metadata = { labels }

let kubernetes_nodes ?id ?(metadata = []) () : kubernetes_nodes =
  { id; metadata }

type t = {
  tf_name : string;
  id : string prop;
  nodes : nodes list prop;
}

let make ?id ?(metadata = []) __id =
  let __type = "kubernetes_nodes" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       nodes = Prop.computed __type __id "nodes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_nodes (kubernetes_nodes ?id ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(metadata = []) __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
