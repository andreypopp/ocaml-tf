(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_action__forward__target_groups = {
  target_group_identifier : string prop;
  weight : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_group_identifier
         in
         ("target_group_identifier", arg) :: bnds
       in
       `Assoc bnds
    : default_action__forward__target_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__forward__target_groups

[@@@deriving.end]

type default_action__forward = {
  target_groups : default_action__forward__target_groups list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_target_groups then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_action__forward__target_groups)
               v_target_groups
           in
           let bnd = "target_groups", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : default_action__forward -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action__forward

[@@@deriving.end]

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

type default_action = {
  fixed_response : default_action__fixed_response list;
      [@default []] [@yojson_drop_default ( = )]
  forward : default_action__forward list;
      [@default []] [@yojson_drop_default ( = )]
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
         if [] = v_forward then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_action__forward)
               v_forward
           in
           let bnd = "forward", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_fixed_response then bnds
         else
           let arg =
             (yojson_of_list yojson_of_default_action__fixed_response)
               v_fixed_response
           in
           let bnd = "fixed_response", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : default_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_action

[@@@deriving.end]

type aws_vpclattice_listener = {
  id : string prop option; [@option]
  listener_identifier : string prop;
  service_identifier : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_listener) -> ()

let yojson_of_aws_vpclattice_listener =
  (function
   | {
       id = v_id;
       listener_identifier = v_listener_identifier;
       service_identifier = v_service_identifier;
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
         let arg =
           yojson_of_prop yojson_of_string v_service_identifier
         in
         ("service_identifier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_listener_identifier
         in
         ("listener_identifier", arg) :: bnds
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

let aws_vpclattice_listener ?id ?tags ~listener_identifier
    ~service_identifier () : aws_vpclattice_listener =
  { id; listener_identifier; service_identifier; tags }

type t = {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  default_action : default_action list prop;
  id : string prop;
  last_updated_at : string prop;
  listener_id : string prop;
  listener_identifier : string prop;
  name : string prop;
  port : float prop;
  protocol : string prop;
  service_arn : string prop;
  service_id : string prop;
  service_identifier : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~listener_identifier ~service_identifier __id =
  let __type = "aws_vpclattice_listener" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       default_action = Prop.computed __type __id "default_action";
       id = Prop.computed __type __id "id";
       last_updated_at = Prop.computed __type __id "last_updated_at";
       listener_id = Prop.computed __type __id "listener_id";
       listener_identifier =
         Prop.computed __type __id "listener_identifier";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       protocol = Prop.computed __type __id "protocol";
       service_arn = Prop.computed __type __id "service_arn";
       service_id = Prop.computed __type __id "service_id";
       service_identifier =
         Prop.computed __type __id "service_identifier";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_listener
        (aws_vpclattice_listener ?id ?tags ~listener_identifier
           ~service_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~listener_identifier
    ~service_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~listener_identifier ~service_identifier __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
