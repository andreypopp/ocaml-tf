(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_strategy = {
  fleet_id : string prop option; [@option]
  message : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_strategy) -> ()

let yojson_of_routing_strategy =
  (function
   | { fleet_id = v_fleet_id; message = v_message; type_ = v_type_ }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fleet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fleet_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_strategy

[@@@deriving.end]

type aws_gamelift_alias = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  routing_strategy : routing_strategy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_gamelift_alias) -> ()

let yojson_of_aws_gamelift_alias =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       routing_strategy = v_routing_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing_strategy
             v_routing_strategy
         in
         ("routing_strategy", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_gamelift_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_gamelift_alias

[@@@deriving.end]

let routing_strategy ?fleet_id ?message ~type_ () : routing_strategy
    =
  { fleet_id; message; type_ }

let aws_gamelift_alias ?description ?id ?tags ?tags_all ~name
    ~routing_strategy () : aws_gamelift_alias =
  { description; id; name; tags; tags_all; routing_strategy }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~routing_strategy
    __id =
  let __type = "aws_gamelift_alias" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_gamelift_alias
        (aws_gamelift_alias ?description ?id ?tags ?tags_all ~name
           ~routing_strategy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~routing_strategy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~routing_strategy
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
