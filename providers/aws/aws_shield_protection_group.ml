(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_shield_protection_group = {
  aggregation : string prop;
  id : string prop option; [@option]
  members : string prop list option; [@option]
  pattern : string prop;
  protection_group_id : string prop;
  resource_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_shield_protection_group) -> ()

let yojson_of_aws_shield_protection_group =
  (function
   | {
       aggregation = v_aggregation;
       id = v_id;
       members = v_members;
       pattern = v_pattern;
       protection_group_id = v_protection_group_id;
       resource_type = v_resource_type;
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_protection_group_id
         in
         ("protection_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       let bnds =
         match v_members with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "members", arg in
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
         let arg = yojson_of_prop yojson_of_string v_aggregation in
         ("aggregation", arg) :: bnds
       in
       `Assoc bnds
    : aws_shield_protection_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_shield_protection_group

[@@@deriving.end]

let aws_shield_protection_group ?id ?members ?resource_type ?tags
    ?tags_all ~aggregation ~pattern ~protection_group_id () :
    aws_shield_protection_group =
  {
    aggregation;
    id;
    members;
    pattern;
    protection_group_id;
    resource_type;
    tags;
    tags_all;
  }

type t = {
  aggregation : string prop;
  id : string prop;
  members : string list prop;
  pattern : string prop;
  protection_group_arn : string prop;
  protection_group_id : string prop;
  resource_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?members ?resource_type ?tags ?tags_all ~aggregation
    ~pattern ~protection_group_id __id =
  let __type = "aws_shield_protection_group" in
  let __attrs =
    ({
       aggregation = Prop.computed __type __id "aggregation";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       pattern = Prop.computed __type __id "pattern";
       protection_group_arn =
         Prop.computed __type __id "protection_group_arn";
       protection_group_id =
         Prop.computed __type __id "protection_group_id";
       resource_type = Prop.computed __type __id "resource_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_protection_group
        (aws_shield_protection_group ?id ?members ?resource_type
           ?tags ?tags_all ~aggregation ~pattern ~protection_group_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?members ?resource_type ?tags ?tags_all
    ~aggregation ~pattern ~protection_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?members ?resource_type ?tags ?tags_all ~aggregation
      ~pattern ~protection_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
