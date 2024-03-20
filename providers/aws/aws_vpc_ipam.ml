(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type operating_regions = {
  region_name : string prop;  (** region_name *)
}
[@@deriving yojson_of]
(** operating_regions *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_ipam = {
  cascade : bool prop option; [@option]  (** cascade *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  operating_regions : operating_regions list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam *)

let operating_regions ~region_name () : operating_regions =
  { region_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_ipam ?cascade ?description ?id ?tags ?tags_all ?timeouts
    ~operating_regions () : aws_vpc_ipam =
  {
    cascade;
    description;
    id;
    tags;
    tags_all;
    operating_regions;
    timeouts;
  }

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

let make ?cascade ?description ?id ?tags ?tags_all ?timeouts
    ~operating_regions __id =
  let __type = "aws_vpc_ipam" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cascade = Prop.computed __type __id "cascade";
       default_resource_discovery_association_id =
         Prop.computed __type __id
           "default_resource_discovery_association_id";
       default_resource_discovery_id =
         Prop.computed __type __id "default_resource_discovery_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       private_default_scope_id =
         Prop.computed __type __id "private_default_scope_id";
       public_default_scope_id =
         Prop.computed __type __id "public_default_scope_id";
       scope_count = Prop.computed __type __id "scope_count";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam
        (aws_vpc_ipam ?cascade ?description ?id ?tags ?tags_all
           ?timeouts ~operating_regions ());
    attrs = __attrs;
  }

let register ?tf_module ?cascade ?description ?id ?tags ?tags_all
    ?timeouts ~operating_regions __id =
  let (r : _ Tf_core.resource) =
    make ?cascade ?description ?id ?tags ?tags_all ?timeouts
      ~operating_regions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
