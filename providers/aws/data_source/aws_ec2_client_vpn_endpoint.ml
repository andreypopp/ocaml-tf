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

type authentication_options = {
  active_directory_id : string prop;
  root_certificate_chain_arn : string prop;
  saml_provider_arn : string prop;
  self_service_saml_provider_arn : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication_options) -> ()

let yojson_of_authentication_options =
  (function
   | {
       active_directory_id = v_active_directory_id;
       root_certificate_chain_arn = v_root_certificate_chain_arn;
       saml_provider_arn = v_saml_provider_arn;
       self_service_saml_provider_arn =
         v_self_service_saml_provider_arn;
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
             v_self_service_saml_provider_arn
         in
         ("self_service_saml_provider_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_saml_provider_arn
         in
         ("saml_provider_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_root_certificate_chain_arn
         in
         ("root_certificate_chain_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_active_directory_id
         in
         ("active_directory_id", arg) :: bnds
       in
       `Assoc bnds
    : authentication_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_options

[@@@deriving.end]

type client_connect_options = {
  enabled : bool prop;
  lambda_function_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_connect_options) -> ()

let yojson_of_client_connect_options =
  (function
   | {
       enabled = v_enabled;
       lambda_function_arn = v_lambda_function_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lambda_function_arn
         in
         ("lambda_function_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : client_connect_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_connect_options

[@@@deriving.end]

type client_login_banner_options = {
  banner_text : string prop;
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_login_banner_options) -> ()

let yojson_of_client_login_banner_options =
  (function
   | { banner_text = v_banner_text; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_banner_text in
         ("banner_text", arg) :: bnds
       in
       `Assoc bnds
    : client_login_banner_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_login_banner_options

[@@@deriving.end]

type connection_log_options = {
  cloudwatch_log_group : string prop;
  cloudwatch_log_stream : string prop;
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_log_options) -> ()

let yojson_of_connection_log_options =
  (function
   | {
       cloudwatch_log_group = v_cloudwatch_log_group;
       cloudwatch_log_stream = v_cloudwatch_log_stream;
       enabled = v_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloudwatch_log_stream
         in
         ("cloudwatch_log_stream", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloudwatch_log_group
         in
         ("cloudwatch_log_group", arg) :: bnds
       in
       `Assoc bnds
    : connection_log_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_log_options

[@@@deriving.end]

type aws_ec2_client_vpn_endpoint = {
  client_vpn_endpoint_id : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_client_vpn_endpoint) -> ()

let yojson_of_aws_ec2_client_vpn_endpoint =
  (function
   | {
       client_vpn_endpoint_id = v_client_vpn_endpoint_id;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_vpn_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_vpn_endpoint_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_client_vpn_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_client_vpn_endpoint

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ec2_client_vpn_endpoint ?client_vpn_endpoint_id ?id ?tags
    ?timeouts ~filter () : aws_ec2_client_vpn_endpoint =
  { client_vpn_endpoint_id; id; tags; filter; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  authentication_options : authentication_options list prop;
  client_cidr_block : string prop;
  client_connect_options : client_connect_options list prop;
  client_login_banner_options :
    client_login_banner_options list prop;
  client_vpn_endpoint_id : string prop;
  connection_log_options : connection_log_options list prop;
  description : string prop;
  dns_name : string prop;
  dns_servers : string list prop;
  id : string prop;
  security_group_ids : string list prop;
  self_service_portal : string prop;
  self_service_portal_url : string prop;
  server_certificate_arn : string prop;
  session_timeout_hours : float prop;
  split_tunnel : bool prop;
  tags : (string * string) list prop;
  transport_protocol : string prop;
  vpc_id : string prop;
  vpn_port : float prop;
}

let make ?client_vpn_endpoint_id ?id ?tags ?timeouts ~filter __id =
  let __type = "aws_ec2_client_vpn_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       authentication_options =
         Prop.computed __type __id "authentication_options";
       client_cidr_block =
         Prop.computed __type __id "client_cidr_block";
       client_connect_options =
         Prop.computed __type __id "client_connect_options";
       client_login_banner_options =
         Prop.computed __type __id "client_login_banner_options";
       client_vpn_endpoint_id =
         Prop.computed __type __id "client_vpn_endpoint_id";
       connection_log_options =
         Prop.computed __type __id "connection_log_options";
       description = Prop.computed __type __id "description";
       dns_name = Prop.computed __type __id "dns_name";
       dns_servers = Prop.computed __type __id "dns_servers";
       id = Prop.computed __type __id "id";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       self_service_portal =
         Prop.computed __type __id "self_service_portal";
       self_service_portal_url =
         Prop.computed __type __id "self_service_portal_url";
       server_certificate_arn =
         Prop.computed __type __id "server_certificate_arn";
       session_timeout_hours =
         Prop.computed __type __id "session_timeout_hours";
       split_tunnel = Prop.computed __type __id "split_tunnel";
       tags = Prop.computed __type __id "tags";
       transport_protocol =
         Prop.computed __type __id "transport_protocol";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpn_port = Prop.computed __type __id "vpn_port";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_client_vpn_endpoint
        (aws_ec2_client_vpn_endpoint ?client_vpn_endpoint_id ?id
           ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?client_vpn_endpoint_id ?id ?tags ?timeouts
    ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?client_vpn_endpoint_id ?id ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
