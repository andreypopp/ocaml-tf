(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = { style : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | { style = v_style } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_style in
         ("style", arg) :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type aws_location_map = {
  id : string prop option; [@option]
  map_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_map) -> ()

let yojson_of_aws_location_map =
  (function
   | { id = v_id; map_name = v_map_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_map_name in
         ("map_name", arg) :: bnds
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
    : aws_location_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_map

[@@@deriving.end]

let aws_location_map ?id ?tags ~map_name () : aws_location_map =
  { id; map_name; tags }

type t = {
  tf_name : string;
  configuration : configuration list prop;
  create_time : string prop;
  description : string prop;
  id : string prop;
  map_arn : string prop;
  map_name : string prop;
  tags : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?id ?tags ~map_name __id =
  let __type = "aws_location_map" in
  let __attrs =
    ({
       tf_name = __id;
       configuration = Prop.computed __type __id "configuration";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       map_arn = Prop.computed __type __id "map_arn";
       map_name = Prop.computed __type __id "map_name";
       tags = Prop.computed __type __id "tags";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_map
        (aws_location_map ?id ?tags ~map_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~map_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~map_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
