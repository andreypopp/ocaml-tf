(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type nodes__status__node_info = {
  architecture : string prop;  (** architecture *)
  boot_id : string prop;  (** boot_id *)
  container_runtime_version : string prop;
      (** container_runtime_version *)
  kernel_version : string prop;  (** kernel_version *)
  kube_proxy_version : string prop;  (** kube_proxy_version *)
  kubelet_version : string prop;  (** kubelet_version *)
  machine_id : string prop;  (** machine_id *)
  operating_system : string prop;  (** operating_system *)
  os_image : string prop;  (** os_image *)
  system_uuid : string prop;  (** system_uuid *)
}

type nodes__status__addresses = {
  address : string prop;  (** address *)
  type_ : string prop; [@key "type"]  (** type *)
}

type nodes__status = {
  addresses : nodes__status__addresses list;
      [@default []] [@yojson_drop_default ( = )]
      (** addresses *)
  allocatable : (string * string prop) list;  (** allocatable *)
  capacity : (string * string prop) list;  (** capacity *)
  node_info : nodes__status__node_info list;
      [@default []] [@yojson_drop_default ( = )]
      (** node_info *)
}

type nodes__spec__taints = {
  effect : string prop;  (** effect *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}

type nodes__spec = {
  pod_cidr : string prop;  (** pod_cidr *)
  pod_cidrs : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** pod_cidrs *)
  provider_id : string prop;  (** provider_id *)
  taints : nodes__spec__taints list;
      [@default []] [@yojson_drop_default ( = )]
      (** taints *)
  unschedulable : bool prop;  (** unschedulable *)
}

type nodes__metadata = {
  annotations : (string * string prop) list;  (** annotations *)
  generation : float prop;  (** generation *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  resource_version : string prop;  (** resource_version *)
  uid : string prop;  (** uid *)
}

type nodes = {
  metadata : nodes__metadata list;
      [@default []] [@yojson_drop_default ( = )]
      (** metadata *)
  spec : nodes__spec list; [@default []] [@yojson_drop_default ( = )]
      (** spec *)
  status : nodes__status list;
      [@default []] [@yojson_drop_default ( = )]
      (** status *)
}

type metadata

val metadata : labels:(string * string prop) list -> unit -> metadata

type kubernetes_nodes

val kubernetes_nodes :
  ?id:string prop ->
  ?metadata:metadata list ->
  unit ->
  kubernetes_nodes

val yojson_of_kubernetes_nodes : kubernetes_nodes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  nodes : nodes list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?metadata:metadata list ->
  string ->
  t Tf_core.resource
