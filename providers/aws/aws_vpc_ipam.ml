(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type operating_regions = { region_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : operating_regions) -> ()

let yojson_of_operating_regions =
  (function
   | { region_name = v_region_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_name in
         ("region_name", arg) :: bnds
       in
       `Assoc bnds
    : operating_regions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_operating_regions

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_vpc_ipam = {
  cascade : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  tier : string prop option; [@option]
  operating_regions : operating_regions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam) -> ()

let yojson_of_aws_vpc_ipam =
  (function
   | {
       cascade = v_cascade;
       description = v_description;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       tier = v_tier;
       operating_regions = v_operating_regions;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_operating_regions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_operating_regions)
               v_operating_regions
           in
           let bnd = "operating_regions", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cascade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cascade", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_ipam -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam

[@@@deriving.end]

let operating_regions ~region_name () : operating_regions =
  { region_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_ipam ?cascade ?description ?id ?tags ?tags_all ?tier
    ?timeouts ~operating_regions () : aws_vpc_ipam =
  {
    cascade;
    description;
    id;
    tags;
    tags_all;
    tier;
    operating_regions;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  cascade : bool prop;
  default_resource_discovery_association_id : string prop;
  default_resource_discovery_id : string prop;
  description : string prop;
  id : string prop;
  private_default_scope_id : string prop;
  public_default_scope_id : string prop;
  scope_count : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tier : string prop;
}

let make ?cascade ?description ?id ?tags ?tags_all ?tier ?timeouts
    ~operating_regions __id =
  let __type = "aws_vpc_ipam" in
  let __attrs =
    ({
       tf_name = __id;
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
       tier = Prop.computed __type __id "tier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam
        (aws_vpc_ipam ?cascade ?description ?id ?tags ?tags_all ?tier
           ?timeouts ~operating_regions ());
    attrs = __attrs;
  }

let register ?tf_module ?cascade ?description ?id ?tags ?tags_all
    ?tier ?timeouts ~operating_regions __id =
  let (r : _ Tf_core.resource) =
    make ?cascade ?description ?id ?tags ?tags_all ?tier ?timeouts
      ~operating_regions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
