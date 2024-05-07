(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_configuration = {
  from_port : float prop;
  protocols : string prop list;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration) -> ()

let yojson_of_destination_configuration =
  (function
   | {
       from_port = v_from_port;
       protocols = v_protocols;
       to_port = v_to_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_port in
         ("to_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_protocols
         in
         ("protocols", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       `Assoc bnds
    : destination_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration

[@@@deriving.end]

type endpoint_configuration = {
  endpoint_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint_configuration) -> ()

let yojson_of_endpoint_configuration =
  (function
   | { endpoint_id = v_endpoint_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint_configuration

[@@@deriving.end]

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

type aws_globalaccelerator_custom_routing_endpoint_group = {
  endpoint_group_region : string prop option; [@option]
  id : string prop option; [@option]
  listener_arn : string prop;
  destination_configuration : destination_configuration list;
  endpoint_configuration : endpoint_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_globalaccelerator_custom_routing_endpoint_group) -> ()

let yojson_of_aws_globalaccelerator_custom_routing_endpoint_group =
  (function
   | {
       endpoint_group_region = v_endpoint_group_region;
       id = v_id;
       listener_arn = v_listener_arn;
       destination_configuration = v_destination_configuration;
       endpoint_configuration = v_endpoint_configuration;
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
           yojson_of_list yojson_of_endpoint_configuration
             v_endpoint_configuration
         in
         ("endpoint_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination_configuration
             v_destination_configuration
         in
         ("destination_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_listener_arn in
         ("listener_arn", arg) :: bnds
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
         match v_endpoint_group_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_group_region", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_globalaccelerator_custom_routing_endpoint_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_globalaccelerator_custom_routing_endpoint_group

[@@@deriving.end]

let destination_configuration ~from_port ~protocols ~to_port () :
    destination_configuration =
  { from_port; protocols; to_port }

let endpoint_configuration ?endpoint_id () : endpoint_configuration =
  { endpoint_id }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_globalaccelerator_custom_routing_endpoint_group
    ?endpoint_group_region ?id ?timeouts ~listener_arn
    ~destination_configuration ~endpoint_configuration () :
    aws_globalaccelerator_custom_routing_endpoint_group =
  {
    endpoint_group_region;
    id;
    listener_arn;
    destination_configuration;
    endpoint_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  endpoint_group_region : string prop;
  id : string prop;
  listener_arn : string prop;
}

let make ?endpoint_group_region ?id ?timeouts ~listener_arn
    ~destination_configuration ~endpoint_configuration __id =
  let __type =
    "aws_globalaccelerator_custom_routing_endpoint_group"
  in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       endpoint_group_region =
         Prop.computed __type __id "endpoint_group_region";
       id = Prop.computed __type __id "id";
       listener_arn = Prop.computed __type __id "listener_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_custom_routing_endpoint_group
        (aws_globalaccelerator_custom_routing_endpoint_group
           ?endpoint_group_region ?id ?timeouts ~listener_arn
           ~destination_configuration ~endpoint_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?endpoint_group_region ?id ?timeouts
    ~listener_arn ~destination_configuration ~endpoint_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?endpoint_group_region ?id ?timeouts ~listener_arn
      ~destination_configuration ~endpoint_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
