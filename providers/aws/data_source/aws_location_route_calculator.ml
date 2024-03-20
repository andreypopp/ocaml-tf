(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_location_route_calculator = {
  calculator_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_location_route_calculator) -> ()

let yojson_of_aws_location_route_calculator =
  (function
   | {
       calculator_name = v_calculator_name;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_calculator_name
         in
         ("calculator_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_location_route_calculator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_location_route_calculator

[@@@deriving.end]

let aws_location_route_calculator ?id ?tags ~calculator_name () :
    aws_location_route_calculator =
  { calculator_name; id; tags }

type t = {
  calculator_arn : string prop;
  calculator_name : string prop;
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  tags : (string * string) list prop;
  update_time : string prop;
}

let make ?id ?tags ~calculator_name __id =
  let __type = "aws_location_route_calculator" in
  let __attrs =
    ({
       calculator_arn = Prop.computed __type __id "calculator_arn";
       calculator_name = Prop.computed __type __id "calculator_name";
       create_time = Prop.computed __type __id "create_time";
       data_source = Prop.computed __type __id "data_source";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_route_calculator
        (aws_location_route_calculator ?id ?tags ~calculator_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~calculator_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~calculator_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
