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

type aws_globalaccelerator_listener = {
  accelerator_arn : string prop;
  client_affinity : string prop option; [@option]
  id : string prop option; [@option]
  protocol : string prop;
  port_range : port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_globalaccelerator_listener) -> ()

let yojson_of_aws_globalaccelerator_listener =
  (function
   | {
       accelerator_arn = v_accelerator_arn;
       client_affinity = v_client_affinity;
       id = v_id;
       protocol = v_protocol;
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
         if Stdlib.( = ) [] v_port_range then bnds
         else
           let arg =
             (yojson_of_list yojson_of_port_range) v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
         match v_client_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_affinity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accelerator_arn
         in
         ("accelerator_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_globalaccelerator_listener ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_globalaccelerator_listener

[@@@deriving.end]

let port_range ?from_port ?to_port () : port_range =
  { from_port; to_port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_globalaccelerator_listener ?client_affinity ?id ?timeouts
    ~accelerator_arn ~protocol ~port_range () :
    aws_globalaccelerator_listener =
  {
    accelerator_arn;
    client_affinity;
    id;
    protocol;
    port_range;
    timeouts;
  }

type t = {
  tf_name : string;
  accelerator_arn : string prop;
  client_affinity : string prop;
  id : string prop;
  protocol : string prop;
}

let make ?client_affinity ?id ?timeouts ~accelerator_arn ~protocol
    ~port_range __id =
  let __type = "aws_globalaccelerator_listener" in
  let __attrs =
    ({
       tf_name = __id;
       accelerator_arn = Prop.computed __type __id "accelerator_arn";
       client_affinity = Prop.computed __type __id "client_affinity";
       id = Prop.computed __type __id "id";
       protocol = Prop.computed __type __id "protocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_globalaccelerator_listener
        (aws_globalaccelerator_listener ?client_affinity ?id
           ?timeouts ~accelerator_arn ~protocol ~port_range ());
    attrs = __attrs;
  }

let register ?tf_module ?client_affinity ?id ?timeouts
    ~accelerator_arn ~protocol ~port_range __id =
  let (r : _ Tf_core.resource) =
    make ?client_affinity ?id ?timeouts ~accelerator_arn ~protocol
      ~port_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
