(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam__operating_regions = {
  region_name : string prop;  (** region_name *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam__operating_regions *)

type aws_vpc_ipam__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam__timeouts *)

type aws_vpc_ipam = {
  cascade : bool prop option; [@option]  (** cascade *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  operating_regions : aws_vpc_ipam__operating_regions list;
  timeouts : aws_vpc_ipam__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam *)

type t = {
  arn : string prop;
  cascade : bool prop;
  default_resource_discovery_association_id : string prop;
  default_resource_discovery_id : string prop;
  description : string prop;
  id : string prop;
  private_default_scope_id : string prop;
  public_default_scope_id : string prop;
  scope_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_vpc_ipam ?cascade ?description ?id ?tags ?tags_all ?timeouts
    ~operating_regions __resource_id =
  let __resource_type = "aws_vpc_ipam" in
  let __resource =
    ({
       cascade;
       description;
       id;
       tags;
       tags_all;
       operating_regions;
       timeouts;
     }
      : aws_vpc_ipam)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cascade =
         Prop.computed __resource_type __resource_id "cascade";
       default_resource_discovery_association_id =
         Prop.computed __resource_type __resource_id
           "default_resource_discovery_association_id";
       default_resource_discovery_id =
         Prop.computed __resource_type __resource_id
           "default_resource_discovery_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       private_default_scope_id =
         Prop.computed __resource_type __resource_id
           "private_default_scope_id";
       public_default_scope_id =
         Prop.computed __resource_type __resource_id
           "public_default_scope_id";
       scope_count =
         Prop.computed __resource_type __resource_id "scope_count";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
