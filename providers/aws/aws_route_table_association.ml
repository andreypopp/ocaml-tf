(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_route_table_association = {
  gateway_id : string prop option; [@option]
  id : string prop option; [@option]
  route_table_id : string prop;
  subnet_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route_table_association) -> ()

let yojson_of_aws_route_table_association =
  (function
   | {
       gateway_id = v_gateway_id;
       id = v_id;
       route_table_id = v_route_table_id;
       subnet_id = v_subnet_id;
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_route_table_id
         in
         ("route_table_id", arg) :: bnds
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
         match v_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route_table_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route_table_association

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route_table_association ?gateway_id ?id ?subnet_id ?timeouts
    ~route_table_id () : aws_route_table_association =
  { gateway_id; id; route_table_id; subnet_id; timeouts }

type t = {
  tf_name : string;
  gateway_id : string prop;
  id : string prop;
  route_table_id : string prop;
  subnet_id : string prop;
}

let make ?gateway_id ?id ?subnet_id ?timeouts ~route_table_id __id =
  let __type = "aws_route_table_association" in
  let __attrs =
    ({
       tf_name = __id;
       gateway_id = Prop.computed __type __id "gateway_id";
       id = Prop.computed __type __id "id";
       route_table_id = Prop.computed __type __id "route_table_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route_table_association
        (aws_route_table_association ?gateway_id ?id ?subnet_id
           ?timeouts ~route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?gateway_id ?id ?subnet_id ?timeouts
    ~route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?gateway_id ?id ?subnet_id ?timeouts ~route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
