(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type port_range = {
  from_port : float prop option; [@option]
  to_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : port_range) -> ()

let yojson_of_port_range =
  (function
   | { from_port = v_from_port; to_port = v_to_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_to_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "to_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_from_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "from_port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : port_range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_port_range

[@@@deriving.end]

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

type aws_globalaccelerator_custom_routing_listener = {
  accelerator_arn : string prop;
  id : string prop option; [@option]
  port_range : port_range list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_globalaccelerator_custom_routing_listener) -> ()

let yojson_of_aws_globalaccelerator_custom_routing_listener =
  (function
   | {
       accelerator_arn = v_accelerator_arn;
       id = v_id;
       port_range = v_port_range;
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
           yojson_of_list yojson_of_port_range v_port_range
         in
         ("port_range", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_accelerator_arn
         in
         ("accelerator_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_globalaccelerator_custom_routing_listener ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_globalaccelerator_custom_routing_listener

[@@@deriving.end]

let port_range ?from_port ?to_port () : port_range =
  { from_port; to_port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_globalaccelerator_custom_routing_listener ?id ?timeouts
    ~accelerator_arn ~port_range () :
    aws_globalaccelerator_custom_routing_listener =
  { accelerator_arn; id; port_range; timeouts }

type t = {
  tf_name : string;
  accelerator_arn : string prop;
  id : string prop;
}

let make ?id ?timeouts ~accelerator_arn ~port_range __id =
  let __type = "aws_globalaccelerator_custom_routing_listener" in
  let __attrs =
    ({
       tf_name = __id;
       accelerator_arn = Prop.computed __type __id "accelerator_arn";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_custom_routing_listener
        (aws_globalaccelerator_custom_routing_listener ?id ?timeouts
           ~accelerator_arn ~port_range ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~accelerator_arn ~port_range
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~accelerator_arn ~port_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
