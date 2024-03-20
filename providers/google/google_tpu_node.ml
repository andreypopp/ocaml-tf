(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scheduling_config = {
  preemptible : bool prop;
      (** Defines whether the TPU instance is preemptible. *)
}
[@@deriving yojson_of]
(** Sets the scheduling options for this TPU instance. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type network_endpoints = {
  ip_address : string prop;  (** ip_address *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]

type google_tpu_node = {
  accelerator_type : string prop;
      (** The type of hardware accelerators associated with this node. *)
  cidr_block : string prop option; [@option]
      (** The CIDR block that the TPU node will use when selecting an IP
address. This CIDR block must be a /29 block; the Compute Engine
networks API forbids a smaller block, and using a larger block would
be wasteful (a node can only consume one IP address).

Errors will occur if the CIDR block has already been used for a
currently existing TPU node, the CIDR block conflicts with any
subnetworks in the user's provided network, or the provided network
is peered with another network that is using that CIDR block. *)
  description : string prop option; [@option]
      (** The user-supplied description of the TPU. Maximum of 512 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** The immutable name of the TPU. *)
  network : string prop option; [@option]
      (** The name of a network to peer the TPU node to. It must be a
preexisting Compute Engine network inside of the project on which
this API has been activated. If none is provided, default will be
used. *)
  project : string prop option; [@option]  (** project *)
  tensorflow_version : string prop;
      (** The version of Tensorflow running in the Node. *)
  use_service_networking : bool prop option; [@option]
      (** Whether the VPC peering for the node is set up through Service Networking API.
The VPC Peering should be set up before provisioning the node. If this field is set,
cidr_block field should not be specified. If the network that you want to peer the
TPU Node to is a Shared VPC network, the node must be created with this this field enabled. *)
  zone : string prop option; [@option]
      (** The GCP location for the TPU. If it is not provided, the provider zone is used. *)
  scheduling_config : scheduling_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_tpu_node *)

let scheduling_config ~preemptible () : scheduling_config =
  { preemptible }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_tpu_node ?cidr_block ?description ?id ?labels ?network
    ?project ?use_service_networking ?zone ?timeouts
    ~accelerator_type ~name ~tensorflow_version ~scheduling_config ()
    : google_tpu_node =
  {
    accelerator_type;
    cidr_block;
    description;
    id;
    labels;
    name;
    network;
    project;
    tensorflow_version;
    use_service_networking;
    zone;
    scheduling_config;
    timeouts;
  }

type t = {
  accelerator_type : string prop;
  cidr_block : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  network_endpoints : network_endpoints list prop;
  project : string prop;
  service_account : string prop;
  tensorflow_version : string prop;
  terraform_labels : (string * string) list prop;
  use_service_networking : bool prop;
  zone : string prop;
}

let make ?cidr_block ?description ?id ?labels ?network ?project
    ?use_service_networking ?zone ?timeouts ~accelerator_type ~name
    ~tensorflow_version ~scheduling_config __id =
  let __type = "google_tpu_node" in
  let __attrs =
    ({
       accelerator_type =
         Prop.computed __type __id "accelerator_type";
       cidr_block = Prop.computed __type __id "cidr_block";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_endpoints =
         Prop.computed __type __id "network_endpoints";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       tensorflow_version =
         Prop.computed __type __id "tensorflow_version";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       use_service_networking =
         Prop.computed __type __id "use_service_networking";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tpu_node
        (google_tpu_node ?cidr_block ?description ?id ?labels
           ?network ?project ?use_service_networking ?zone ?timeouts
           ~accelerator_type ~name ~tensorflow_version
           ~scheduling_config ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_block ?description ?id ?labels ?network
    ?project ?use_service_networking ?zone ?timeouts
    ~accelerator_type ~name ~tensorflow_version ~scheduling_config
    __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_block ?description ?id ?labels ?network ?project
      ?use_service_networking ?zone ?timeouts ~accelerator_type ~name
      ~tensorflow_version ~scheduling_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
