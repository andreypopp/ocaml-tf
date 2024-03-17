(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_core_network__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network__timeouts *)

type aws_networkmanager_core_network__edges = {
  asn : float prop;  (** asn *)
  edge_location : string prop;  (** edge_location *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
}
[@@deriving yojson_of]

type aws_networkmanager_core_network__segments = {
  edge_locations : string prop list;  (** edge_locations *)
  name : string prop;  (** name *)
  shared_segments : string prop list;  (** shared_segments *)
}
[@@deriving yojson_of]

type aws_networkmanager_core_network = {
  base_policy_document : string prop option; [@option]
      (** base_policy_document *)
  base_policy_region : string prop option; [@option]
      (** base_policy_region *)
  base_policy_regions : string prop list option; [@option]
      (** base_policy_regions *)
  create_base_policy : bool prop option; [@option]
      (** create_base_policy *)
  description : string prop option; [@option]  (** description *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_networkmanager_core_network__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network *)

let aws_networkmanager_core_network ?base_policy_document
    ?base_policy_region ?base_policy_regions ?create_base_policy
    ?description ?id ?tags ?tags_all ?timeouts ~global_network_id
    __resource_id =
  let __resource_type = "aws_networkmanager_core_network" in
  let __resource =
    {
      base_policy_document;
      base_policy_region;
      base_policy_regions;
      create_base_policy;
      description;
      global_network_id;
      id;
      tags;
      tags_all;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_core_network __resource);
  ()
