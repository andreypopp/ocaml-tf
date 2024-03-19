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

type aws_vpc_ipam_resource_discovery_association = {
  id : string prop option; [@option]  (** id *)
  ipam_id : string prop;  (** ipam_id *)
  ipam_resource_discovery_id : string prop;
      (** ipam_resource_discovery_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_resource_discovery_association *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_ipam_resource_discovery_association ?id ?tags ?tags_all
    ?timeouts ~ipam_id ~ipam_resource_discovery_id () :
    aws_vpc_ipam_resource_discovery_association =
  {
    id;
    ipam_id;
    ipam_resource_discovery_id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  id : string prop;
  ipam_arn : string prop;
  ipam_id : string prop;
  ipam_region : string prop;
  ipam_resource_discovery_id : string prop;
  is_default : bool prop;
  owner_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~ipam_id
    ~ipam_resource_discovery_id __resource_id =
  let __resource_type =
    "aws_vpc_ipam_resource_discovery_association"
  in
  let __resource =
    aws_vpc_ipam_resource_discovery_association ?id ?tags ?tags_all
      ?timeouts ~ipam_id ~ipam_resource_discovery_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_resource_discovery_association __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       ipam_arn =
         Prop.computed __resource_type __resource_id "ipam_arn";
       ipam_id =
         Prop.computed __resource_type __resource_id "ipam_id";
       ipam_region =
         Prop.computed __resource_type __resource_id "ipam_region";
       ipam_resource_discovery_id =
         Prop.computed __resource_type __resource_id
           "ipam_resource_discovery_id";
       is_default =
         Prop.computed __resource_type __resource_id "is_default";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
