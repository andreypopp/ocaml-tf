(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_placement_group = {
  id : string prop option; [@option]
  name : string prop;
  partition_count : float prop option; [@option]
  spread_level : string prop option; [@option]
  strategy : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_placement_group) -> ()

let yojson_of_aws_placement_group =
  (function
   | {
       id = v_id;
       name = v_name;
       partition_count = v_partition_count;
       spread_level = v_spread_level;
       strategy = v_strategy;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_strategy in
         ("strategy", arg) :: bnds
       in
       let bnds =
         match v_spread_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spread_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partition_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "partition_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_placement_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_placement_group

[@@@deriving.end]

let aws_placement_group ?id ?partition_count ?spread_level ?tags
    ?tags_all ~name ~strategy () : aws_placement_group =
  {
    id;
    name;
    partition_count;
    spread_level;
    strategy;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  placement_group_id : string prop;
  spread_level : string prop;
  strategy : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?partition_count ?spread_level ?tags ?tags_all ~name
    ~strategy __id =
  let __type = "aws_placement_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_count = Prop.computed __type __id "partition_count";
       placement_group_id =
         Prop.computed __type __id "placement_group_id";
       spread_level = Prop.computed __type __id "spread_level";
       strategy = Prop.computed __type __id "strategy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_placement_group
        (aws_placement_group ?id ?partition_count ?spread_level ?tags
           ?tags_all ~name ~strategy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?partition_count ?spread_level ?tags
    ?tags_all ~name ~strategy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?partition_count ?spread_level ?tags ?tags_all ~name
      ~strategy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
