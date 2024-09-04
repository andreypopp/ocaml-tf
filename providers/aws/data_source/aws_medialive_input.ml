(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destinations__vpc = {
  availability_zone : string prop;
  network_interface_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations__vpc) -> ()

let yojson_of_destinations__vpc =
  (function
   | {
       availability_zone = v_availability_zone;
       network_interface_id = v_network_interface_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : destinations__vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations__vpc

[@@@deriving.end]

type destinations = {
  ip : string prop;
  port : string prop;
  url : string prop;
  vpc : destinations__vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations) -> ()

let yojson_of_destinations =
  (function
   | { ip = v_ip; port = v_port; url = v_url; vpc = v_vpc } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destinations__vpc) v_vpc
           in
           let bnd = "vpc", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       `Assoc bnds
    : destinations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations

[@@@deriving.end]

type input_devices = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : input_devices) -> ()

let yojson_of_input_devices =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : input_devices -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_devices

[@@@deriving.end]

type media_connect_flows = { flow_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : media_connect_flows) -> ()

let yojson_of_media_connect_flows =
  (function
   | { flow_arn = v_flow_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_flow_arn in
         ("flow_arn", arg) :: bnds
       in
       `Assoc bnds
    : media_connect_flows -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_media_connect_flows

[@@@deriving.end]

type sources = {
  password_param : string prop;
  url : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sources) -> ()

let yojson_of_sources =
  (function
   | {
       password_param = v_password_param;
       url = v_url;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_param
         in
         ("password_param", arg) :: bnds
       in
       `Assoc bnds
    : sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sources

[@@@deriving.end]

type aws_medialive_input = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_medialive_input) -> ()

let yojson_of_aws_medialive_input =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_medialive_input -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_medialive_input

[@@@deriving.end]

let aws_medialive_input ~id () : aws_medialive_input = { id }

type t = {
  tf_name : string;
  arn : string prop;
  attached_channels : string list prop;
  destinations : destinations list prop;
  id : string prop;
  input_class : string prop;
  input_devices : input_devices list prop;
  input_partner_ids : string list prop;
  input_source_type : string prop;
  media_connect_flows : media_connect_flows list prop;
  name : string prop;
  role_arn : string prop;
  security_groups : string list prop;
  sources : sources list prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

let make ~id __id =
  let __type = "aws_medialive_input" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       attached_channels =
         Prop.computed __type __id "attached_channels";
       destinations = Prop.computed __type __id "destinations";
       id = Prop.computed __type __id "id";
       input_class = Prop.computed __type __id "input_class";
       input_devices = Prop.computed __type __id "input_devices";
       input_partner_ids =
         Prop.computed __type __id "input_partner_ids";
       input_source_type =
         Prop.computed __type __id "input_source_type";
       media_connect_flows =
         Prop.computed __type __id "media_connect_flows";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       security_groups = Prop.computed __type __id "security_groups";
       sources = Prop.computed __type __id "sources";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_medialive_input (aws_medialive_input ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
