(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_action__fixed_response = { status_code : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__fixed_response) -> ()

let yojson_of_default_action__fixed_response =
  (function
   | { status_code = v_status_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_status_code in
         ("status_code", arg) :: bnds
       in
       `Assoc bnds
    : default_action__fixed_response ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__fixed_response

[@@@deriving.end]

type default_action__forward__target_groups = {
  target_group_identifier : string prop option; [@option]
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__forward__target_groups) -> ()

let yojson_of_default_action__forward__target_groups =
  (function
   | {
       target_group_identifier = v_target_group_identifier;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_group_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_group_identifier", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_action__forward__target_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__forward__target_groups

[@@@deriving.end]

type default_action__forward = {
  target_groups : default_action__forward__target_groups list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action__forward) -> ()

let yojson_of_default_action__forward =
  (function
   | { target_groups = v_target_groups } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_action__forward__target_groups
             v_target_groups
         in
         ("target_groups", arg) :: bnds
       in
       `Assoc bnds
    : default_action__forward -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__forward

[@@@deriving.end]

type default_action = {
  fixed_response : default_action__fixed_response list;
  forward : default_action__forward list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_action) -> ()

let yojson_of_default_action =
  (function
   | { fixed_response = v_fixed_response; forward = v_forward } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_action__forward v_forward
         in
         ("forward", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_default_action__fixed_response
             v_fixed_response
         in
         ("fixed_response", arg) :: bnds
       in
       `Assoc bnds
    : default_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action

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

type aws_vpclattice_listener = {
  id : string prop option; [@option]
  name : string prop;
  port : float prop option; [@option]
  protocol : string prop;
  service_arn : string prop option; [@option]
  service_identifier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  default_action : default_action list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_listener) -> ()

let yojson_of_aws_vpclattice_listener =
  (function
   | {
       id = v_id;
       name = v_name;
       port = v_port;
       protocol = v_protocol;
       service_arn = v_service_arn;
       service_identifier = v_service_identifier;
       tags = v_tags;
       tags_all = v_tags_all;
       default_action = v_default_action;
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
           yojson_of_list yojson_of_default_action v_default_action
         in
         ("default_action", arg) :: bnds
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
         match v_service_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
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
       `Assoc bnds
    : aws_vpclattice_listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_listener

[@@@deriving.end]

let default_action__fixed_response ~status_code () :
    default_action__fixed_response =
  { status_code }

let default_action__forward__target_groups ?target_group_identifier
    ?weight () : default_action__forward__target_groups =
  { target_group_identifier; weight }

let default_action__forward ?(target_groups = []) () :
    default_action__forward =
  { target_groups }

let default_action ?(fixed_response = []) ?(forward = []) () :
    default_action =
  { fixed_response; forward }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_listener ?id ?port ?service_arn
    ?service_identifier ?tags ?tags_all ?timeouts ~name ~protocol
    ~default_action () : aws_vpclattice_listener =
  {
    id;
    name;
    port;
    protocol;
    service_arn;
    service_identifier;
    tags;
    tags_all;
    default_action;
    timeouts;
  }

type t = {
  arn : string prop;
  created_at : string prop;
  id : string prop;
  last_updated_at : string prop;
  listener_id : string prop;
  name : string prop;
  port : float prop;
  protocol : string prop;
  service_arn : string prop;
  service_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?port ?service_arn ?service_identifier ?tags ?tags_all
    ?timeouts ~name ~protocol ~default_action __id =
  let __type = "aws_vpclattice_listener" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       last_updated_at = Prop.computed __type __id "last_updated_at";
       listener_id = Prop.computed __type __id "listener_id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       protocol = Prop.computed __type __id "protocol";
       service_arn = Prop.computed __type __id "service_arn";
       service_identifier =
         Prop.computed __type __id "service_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_listener
        (aws_vpclattice_listener ?id ?port ?service_arn
           ?service_identifier ?tags ?tags_all ?timeouts ~name
           ~protocol ~default_action ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?port ?service_arn ?service_identifier
    ?tags ?tags_all ?timeouts ~name ~protocol ~default_action __id =
  let (r : _ Tf_core.resource) =
    make ?id ?port ?service_arn ?service_identifier ?tags ?tags_all
      ?timeouts ~name ~protocol ~default_action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
