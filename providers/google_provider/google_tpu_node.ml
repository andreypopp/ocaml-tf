(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tpu_node__scheduling_config = {
  preemptible : bool;
      (** Defines whether the TPU instance is preemptible. *)
}
[@@deriving yojson_of]
(** Sets the scheduling options for this TPU instance. *)

type google_tpu_node__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_tpu_node__timeouts *)

type google_tpu_node__network_endpoints = {
  ip_address : string;  (** ip_address *)
  port : float;  (** port *)
}
[@@deriving yojson_of]

type google_tpu_node = {
  accelerator_type : string;
      (** The type of hardware accelerators associated with this node. *)
  description : string option; [@option]
      (** The user-supplied description of the TPU. Maximum of 512 characters. *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user provided metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** The immutable name of the TPU. *)
  tensorflow_version : string;
      (** The version of Tensorflow running in the Node. *)
  use_service_networking : bool option; [@option]
      (** Whether the VPC peering for the node is set up through Service Networking API.
The VPC Peering should be set up before provisioning the node. If this field is set,
cidr_block field should not be specified. If the network that you want to peer the
TPU Node to is a Shared VPC network, the node must be created with this this field enabled. *)
  scheduling_config : google_tpu_node__scheduling_config list;
  timeouts : google_tpu_node__timeouts option;
}
[@@deriving yojson_of]
(** google_tpu_node *)

let google_tpu_node ?description ?labels ?use_service_networking
    ?timeouts ~accelerator_type ~name ~tensorflow_version
    ~scheduling_config __resource_id =
  let __resource_type = "google_tpu_node" in
  let __resource =
    {
      accelerator_type;
      description;
      labels;
      name;
      tensorflow_version;
      use_service_networking;
      scheduling_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tpu_node __resource);
  ()
