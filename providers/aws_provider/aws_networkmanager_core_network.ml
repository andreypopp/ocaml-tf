(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_networkmanager_core_network__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network__timeouts *)

type aws_networkmanager_core_network__edges = {
  asn : float;  (** asn *)
  edge_location : string;  (** edge_location *)
  inside_cidr_blocks : string list;  (** inside_cidr_blocks *)
}
[@@deriving yojson_of]

type aws_networkmanager_core_network__segments = {
  edge_locations : string list;  (** edge_locations *)
  name : string;  (** name *)
  shared_segments : string list;  (** shared_segments *)
}
[@@deriving yojson_of]

type aws_networkmanager_core_network = {
  base_policy_document : string option; [@option]
      (** base_policy_document *)
  base_policy_region : string option; [@option]
      (** base_policy_region *)
  base_policy_regions : string list option; [@option]
      (** base_policy_regions *)
  create_base_policy : bool option; [@option]
      (** create_base_policy *)
  description : string option; [@option]  (** description *)
  global_network_id : string;  (** global_network_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_networkmanager_core_network__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network *)

let aws_networkmanager_core_network ?base_policy_document
    ?base_policy_region ?base_policy_regions ?create_base_policy
    ?description ?tags ?timeouts ~global_network_id __resource_id =
  let __resource_type = "aws_networkmanager_core_network" in
  let __resource =
    {
      base_policy_document;
      base_policy_region;
      base_policy_regions;
      create_base_policy;
      description;
      global_network_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_core_network __resource);
  ()
