(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_network_endpoint_group = {
  default_port : float prop option; [@option]
      (** The default port used if the port number is not specified in the
network endpoint. *)
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string prop;
      (** The network to which all network endpoints in the NEG belong.
Uses default project network if unspecified. *)
  network_endpoint_type : string prop option; [@option]
      (** Type of network endpoints in this network endpoint group.
NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
CONNECTION balancing modes.

Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, and PRIVATE_SERVICE_CONNECT. Default value: GCE_VM_IP_PORT Possible values: [GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, PRIVATE_SERVICE_CONNECT] *)
  project : string prop option; [@option]  (** project *)
  subnetwork : string prop option; [@option]
      (** Optional subnetwork to which all network endpoints in the NEG belong. *)
  zone : string prop option; [@option]
      (** Zone where the network endpoint group is located. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_network_endpoint_group *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_network_endpoint_group ?default_port ?description
    ?id ?network_endpoint_type ?project ?subnetwork ?zone ?timeouts
    ~name ~network () : google_compute_network_endpoint_group =
  {
    default_port;
    description;
    id;
    name;
    network;
    network_endpoint_type;
    project;
    subnetwork;
    zone;
    timeouts;
  }

type t = {
  default_port : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  subnetwork : string prop;
  zone : string prop;
}

let make ?default_port ?description ?id ?network_endpoint_type
    ?project ?subnetwork ?zone ?timeouts ~name ~network __id =
  let __type = "google_compute_network_endpoint_group" in
  let __attrs =
    ({
       default_port = Prop.computed __type __id "default_port";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_endpoint_type =
         Prop.computed __type __id "network_endpoint_type";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
       subnetwork = Prop.computed __type __id "subnetwork";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_endpoint_group
        (google_compute_network_endpoint_group ?default_port
           ?description ?id ?network_endpoint_type ?project
           ?subnetwork ?zone ?timeouts ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?default_port ?description ?id
    ?network_endpoint_type ?project ?subnetwork ?zone ?timeouts ~name
    ~network __id =
  let (r : _ Tf_core.resource) =
    make ?default_port ?description ?id ?network_endpoint_type
      ?project ?subnetwork ?zone ?timeouts ~name ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
