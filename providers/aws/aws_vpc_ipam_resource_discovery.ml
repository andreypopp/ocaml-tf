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

type aws_vpc_ipam_resource_discovery = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  operating_regions : operating_regions list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_resource_discovery *)

let operating_regions ~region_name () : operating_regions =
  { region_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_ipam_resource_discovery ?description ?id ?tags ?tags_all
    ?timeouts ~operating_regions () : aws_vpc_ipam_resource_discovery
    =
  { description; id; tags; tags_all; operating_regions; timeouts }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  ipam_resource_discovery_region : string prop;
  is_default : bool prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts
    ~operating_regions __id =
  let __type = "aws_vpc_ipam_resource_discovery" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ipam_resource_discovery_region =
         Prop.computed __type __id "ipam_resource_discovery_region";
       is_default = Prop.computed __type __id "is_default";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_resource_discovery
        (aws_vpc_ipam_resource_discovery ?description ?id ?tags
           ?tags_all ?timeouts ~operating_regions ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~operating_regions __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts
      ~operating_regions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
