(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type routes = {
  destination_cidr_block : string prop;
  prefix_list_id : string prop;
  state : string prop;
  transit_gateway_route_table_announcement_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routes) -> ()

let yojson_of_routes =
  (function
   | {
       destination_cidr_block = v_destination_cidr_block;
       prefix_list_id = v_prefix_list_id;
       state = v_state;
       transit_gateway_route_table_announcement_id =
         v_transit_gateway_route_table_announcement_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_transit_gateway_route_table_announcement_id
         in
         ("transit_gateway_route_table_announcement_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prefix_list_id
         in
         ("prefix_list_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_cidr_block
         in
         ("destination_cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routes

[@@@deriving.end]

type aws_ec2_transit_gateway_route_table_routes = {
  id : string prop option; [@option]
  transit_gateway_route_table_id : string prop;
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_route_table_routes) -> ()

let yojson_of_aws_ec2_transit_gateway_route_table_routes =
  (function
   | {
       id = v_id;
       transit_gateway_route_table_id =
         v_transit_gateway_route_table_id;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_transit_gateway_route_table_id
         in
         ("transit_gateway_route_table_id", arg) :: bnds
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
    : aws_ec2_transit_gateway_route_table_routes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_route_table_routes

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_ec2_transit_gateway_route_table_routes ?id
    ~transit_gateway_route_table_id ~filter () :
    aws_ec2_transit_gateway_route_table_routes =
  { id; transit_gateway_route_table_id; filter }

type t = {
  tf_name : string;
  id : string prop;
  routes : routes list prop;
  transit_gateway_route_table_id : string prop;
}

let make ?id ~transit_gateway_route_table_id ~filter __id =
  let __type = "aws_ec2_transit_gateway_route_table_routes" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       routes = Prop.computed __type __id "routes";
       transit_gateway_route_table_id =
         Prop.computed __type __id "transit_gateway_route_table_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_route_table_routes
        (aws_ec2_transit_gateway_route_table_routes ?id
           ~transit_gateway_route_table_id ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~transit_gateway_route_table_id ~filter
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~transit_gateway_route_table_id ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
