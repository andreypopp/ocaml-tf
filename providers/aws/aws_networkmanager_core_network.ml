(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type edges = {
  asn : float prop;  (** asn *)
  edge_location : string prop;  (** edge_location *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
}
[@@deriving yojson_of]

type segments = {
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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_core_network ?base_policy_document
    ?base_policy_region ?base_policy_regions ?create_base_policy
    ?description ?id ?tags ?tags_all ?timeouts ~global_network_id ()
    : aws_networkmanager_core_network =
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

type t = {
  arn : string prop;
  base_policy_document : string prop;
  base_policy_region : string prop;
  base_policy_regions : string list prop;
  create_base_policy : bool prop;
  created_at : string prop;
  description : string prop;
  edges : edges list prop;
  global_network_id : string prop;
  id : string prop;
  segments : segments list prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?base_policy_document ?base_policy_region
    ?base_policy_regions ?create_base_policy ?description ?id ?tags
    ?tags_all ?timeouts ~global_network_id __resource_id =
  let __resource_type = "aws_networkmanager_core_network" in
  let __resource =
    aws_networkmanager_core_network ?base_policy_document
      ?base_policy_region ?base_policy_regions ?create_base_policy
      ?description ?id ?tags ?tags_all ?timeouts ~global_network_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_core_network __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       base_policy_document =
         Prop.computed __resource_type __resource_id
           "base_policy_document";
       base_policy_region =
         Prop.computed __resource_type __resource_id
           "base_policy_region";
       base_policy_regions =
         Prop.computed __resource_type __resource_id
           "base_policy_regions";
       create_base_policy =
         Prop.computed __resource_type __resource_id
           "create_base_policy";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       description =
         Prop.computed __resource_type __resource_id "description";
       edges = Prop.computed __resource_type __resource_id "edges";
       global_network_id =
         Prop.computed __resource_type __resource_id
           "global_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       segments =
         Prop.computed __resource_type __resource_id "segments";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
