(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_network_endpoint = {
  id : string prop option; [@option]  (** id *)
  instance : string prop option; [@option]
      (** The name for a specific VM instance that the IP address belongs to.
This is required for network endpoints of type GCE_VM_IP_PORT.
The instance must be in the same zone of network endpoint group. *)
  ip_address : string prop;
      (** IPv4 address of network endpoint. The IP address must belong
to a VM in GCE (either the primary IP or as part of an aliased IP
range). *)
  network_endpoint_group : string prop;
      (** The network endpoint group this endpoint is part of. *)
  port : float prop option; [@option]
      (** Port number of network endpoint.
**Note** 'port' is required unless the Network Endpoint Group is created
with the type of 'GCE_VM_IP' *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]
      (** Zone where the containing network endpoint group is located. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_endpoint *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_network_endpoint ?id ?instance ?port ?project
    ?zone ?timeouts ~ip_address ~network_endpoint_group () :
    google_compute_network_endpoint =
  {
    id;
    instance;
    ip_address;
    network_endpoint_group;
    port;
    project;
    zone;
    timeouts;
  }

type t = {
  id : string prop;
  instance : string prop;
  ip_address : string prop;
  network_endpoint_group : string prop;
  port : float prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?instance ?port ?project ?zone ?timeouts ~ip_address
    ~network_endpoint_group __id =
  let __type = "google_compute_network_endpoint" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       ip_address = Prop.computed __type __id "ip_address";
       network_endpoint_group =
         Prop.computed __type __id "network_endpoint_group";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_endpoint
        (google_compute_network_endpoint ?id ?instance ?port ?project
           ?zone ?timeouts ~ip_address ~network_endpoint_group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?instance ?port ?project ?zone ?timeouts
    ~ip_address ~network_endpoint_group __id =
  let (r : _ Tf_core.resource) =
    make ?id ?instance ?port ?project ?zone ?timeouts ~ip_address
      ~network_endpoint_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
