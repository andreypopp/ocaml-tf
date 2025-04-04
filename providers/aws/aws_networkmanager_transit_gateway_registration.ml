(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_networkmanager_transit_gateway_registration = {
  global_network_id : string prop;
  id : string prop option; [@option]
  transit_gateway_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_networkmanager_transit_gateway_registration) -> ()

let yojson_of_aws_networkmanager_transit_gateway_registration =
  (function
   | {
       global_network_id = v_global_network_id;
       id = v_id;
       transit_gateway_arn = v_transit_gateway_arn;
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
         let arg =
           yojson_of_prop yojson_of_string v_transit_gateway_arn
         in
         ("transit_gateway_arn", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_global_network_id
         in
         ("global_network_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_transit_gateway_registration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_transit_gateway_registration

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_transit_gateway_registration ?id ?timeouts
    ~global_network_id ~transit_gateway_arn () :
    aws_networkmanager_transit_gateway_registration =
  { global_network_id; id; transit_gateway_arn; timeouts }

type t = {
  tf_name : string;
  global_network_id : string prop;
  id : string prop;
  transit_gateway_arn : string prop;
}

let make ?id ?timeouts ~global_network_id ~transit_gateway_arn __id =
  let __type = "aws_networkmanager_transit_gateway_registration" in
  let __attrs =
    ({
       tf_name = __id;
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       transit_gateway_arn =
         Prop.computed __type __id "transit_gateway_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_transit_gateway_registration
        (aws_networkmanager_transit_gateway_registration ?id
           ?timeouts ~global_network_id ~transit_gateway_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~global_network_id
    ~transit_gateway_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~global_network_id ~transit_gateway_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
