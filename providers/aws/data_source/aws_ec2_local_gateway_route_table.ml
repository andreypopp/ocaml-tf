(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_values then bnds
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

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ec2_local_gateway_route_table = {
  id : string prop option; [@option]
  local_gateway_id : string prop option; [@option]
  local_gateway_route_table_id : string prop option; [@option]
  outpost_arn : string prop option; [@option]
  state : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_local_gateway_route_table) -> ()

let yojson_of_aws_ec2_local_gateway_route_table =
  (function
   | {
       id = v_id;
       local_gateway_id = v_local_gateway_id;
       local_gateway_route_table_id = v_local_gateway_route_table_id;
       outpost_arn = v_outpost_arn;
       state = v_state;
       tags = v_tags;
       filter = v_filter;
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
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outpost_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outpost_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_gateway_route_table_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_gateway_route_table_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_gateway_id", arg in
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
       `Assoc bnds
    : aws_ec2_local_gateway_route_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_local_gateway_route_table

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ec2_local_gateway_route_table ?id ?local_gateway_id
    ?local_gateway_route_table_id ?outpost_arn ?state ?tags ?timeouts
    ~filter () : aws_ec2_local_gateway_route_table =
  {
    id;
    local_gateway_id;
    local_gateway_route_table_id;
    outpost_arn;
    state;
    tags;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  local_gateway_id : string prop;
  local_gateway_route_table_id : string prop;
  outpost_arn : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?local_gateway_id ?local_gateway_route_table_id
    ?outpost_arn ?state ?tags ?timeouts ~filter __id =
  let __type = "aws_ec2_local_gateway_route_table" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       local_gateway_id =
         Prop.computed __type __id "local_gateway_id";
       local_gateway_route_table_id =
         Prop.computed __type __id "local_gateway_route_table_id";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_local_gateway_route_table
        (aws_ec2_local_gateway_route_table ?id ?local_gateway_id
           ?local_gateway_route_table_id ?outpost_arn ?state ?tags
           ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?local_gateway_id
    ?local_gateway_route_table_id ?outpost_arn ?state ?tags ?timeouts
    ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?local_gateway_id ?local_gateway_route_table_id
      ?outpost_arn ?state ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
