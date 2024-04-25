(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_options = {
  active_directory_id : string prop option; [@option]
  root_certificate_chain_arn : string prop option; [@option]
  saml_provider_arn : string prop option; [@option]
  self_service_saml_provider_arn : string prop option; [@option]
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
         match v_self_service_saml_provider_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "self_service_saml_provider_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_saml_provider_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "saml_provider_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_certificate_chain_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_certificate_chain_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_directory_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "active_directory_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authentication_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_options

[@@@deriving.end]

type client_connect_options = {
  enabled : bool prop option; [@option]
  lambda_function_arn : string prop option; [@option]
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
         match v_lambda_function_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda_function_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_connect_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_connect_options

[@@@deriving.end]

type client_login_banner_options = {
  banner_text : string prop option; [@option]
  enabled : bool prop option; [@option]
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_banner_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "banner_text", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_login_banner_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_login_banner_options

[@@@deriving.end]

type connection_log_options = {
  cloudwatch_log_group : string prop option; [@option]
  cloudwatch_log_stream : string prop option; [@option]
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
         match v_cloudwatch_log_stream with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_log_stream", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatch_log_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_log_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : connection_log_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_log_options

[@@@deriving.end]

type aws_ec2_client_vpn_endpoint = {
  client_cidr_block : string prop;
  description : string prop option; [@option]
  dns_servers : string prop list option; [@option]
  id : string prop option; [@option]
  security_group_ids : string prop list option; [@option]
  self_service_portal : string prop option; [@option]
  server_certificate_arn : string prop;
  session_timeout_hours : float prop option; [@option]
  split_tunnel : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  transport_protocol : string prop option; [@option]
  vpc_id : string prop option; [@option]
  vpn_port : float prop option; [@option]
  authentication_options : authentication_options list;
  client_connect_options : client_connect_options list;
  client_login_banner_options : client_login_banner_options list;
  connection_log_options : connection_log_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_client_vpn_endpoint) -> ()

let yojson_of_aws_ec2_client_vpn_endpoint =
  (function
   | {
       client_cidr_block = v_client_cidr_block;
       description = v_description;
       dns_servers = v_dns_servers;
       id = v_id;
       security_group_ids = v_security_group_ids;
       self_service_portal = v_self_service_portal;
       server_certificate_arn = v_server_certificate_arn;
       session_timeout_hours = v_session_timeout_hours;
       split_tunnel = v_split_tunnel;
       tags = v_tags;
       tags_all = v_tags_all;
       transport_protocol = v_transport_protocol;
       vpc_id = v_vpc_id;
       vpn_port = v_vpn_port;
       authentication_options = v_authentication_options;
       client_connect_options = v_client_connect_options;
       client_login_banner_options = v_client_login_banner_options;
       connection_log_options = v_connection_log_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_connection_log_options
             v_connection_log_options
         in
         ("connection_log_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_login_banner_options
             v_client_login_banner_options
         in
         ("client_login_banner_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_connect_options
             v_client_connect_options
         in
         ("client_connect_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authentication_options
             v_authentication_options
         in
         ("authentication_options", arg) :: bnds
       in
       let bnds =
         match v_vpn_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vpn_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transport_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transport_protocol", arg in
             bnd :: bnds
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
         match v_split_tunnel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "split_tunnel", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_timeout_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_timeout_hours", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_server_certificate_arn
         in
         ("server_certificate_arn", arg) :: bnds
       in
       let bnds =
         match v_self_service_portal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "self_service_portal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
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
         match v_dns_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_client_cidr_block
         in
         ("client_cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_client_vpn_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_client_vpn_endpoint

[@@@deriving.end]

let authentication_options ?active_directory_id
    ?root_certificate_chain_arn ?saml_provider_arn
    ?self_service_saml_provider_arn ~type_ () :
    authentication_options =
  {
    active_directory_id;
    root_certificate_chain_arn;
    saml_provider_arn;
    self_service_saml_provider_arn;
    type_;
  }

let client_connect_options ?enabled ?lambda_function_arn () :
    client_connect_options =
  { enabled; lambda_function_arn }

let client_login_banner_options ?banner_text ?enabled () :
    client_login_banner_options =
  { banner_text; enabled }

let connection_log_options ?cloudwatch_log_group
    ?cloudwatch_log_stream ~enabled () : connection_log_options =
  { cloudwatch_log_group; cloudwatch_log_stream; enabled }

let aws_ec2_client_vpn_endpoint ?description ?dns_servers ?id
    ?security_group_ids ?self_service_portal ?session_timeout_hours
    ?split_tunnel ?tags ?tags_all ?transport_protocol ?vpc_id
    ?vpn_port ?(client_connect_options = [])
    ?(client_login_banner_options = []) ~client_cidr_block
    ~server_certificate_arn ~authentication_options
    ~connection_log_options () : aws_ec2_client_vpn_endpoint =
  {
    client_cidr_block;
    description;
    dns_servers;
    id;
    security_group_ids;
    self_service_portal;
    server_certificate_arn;
    session_timeout_hours;
    split_tunnel;
    tags;
    tags_all;
    transport_protocol;
    vpc_id;
    vpn_port;
    authentication_options;
    client_connect_options;
    client_login_banner_options;
    connection_log_options;
  }

type t = {
  arn : string prop;
  client_cidr_block : string prop;
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
  tags_all : (string * string) list prop;
  transport_protocol : string prop;
  vpc_id : string prop;
  vpn_port : float prop;
}

let make ?description ?dns_servers ?id ?security_group_ids
    ?self_service_portal ?session_timeout_hours ?split_tunnel ?tags
    ?tags_all ?transport_protocol ?vpc_id ?vpn_port
    ?(client_connect_options = [])
    ?(client_login_banner_options = []) ~client_cidr_block
    ~server_certificate_arn ~authentication_options
    ~connection_log_options __id =
  let __type = "aws_ec2_client_vpn_endpoint" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       client_cidr_block =
         Prop.computed __type __id "client_cidr_block";
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
       tags_all = Prop.computed __type __id "tags_all";
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
        (aws_ec2_client_vpn_endpoint ?description ?dns_servers ?id
           ?security_group_ids ?self_service_portal
           ?session_timeout_hours ?split_tunnel ?tags ?tags_all
           ?transport_protocol ?vpc_id ?vpn_port
           ~client_connect_options ~client_login_banner_options
           ~client_cidr_block ~server_certificate_arn
           ~authentication_options ~connection_log_options ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?dns_servers ?id
    ?security_group_ids ?self_service_portal ?session_timeout_hours
    ?split_tunnel ?tags ?tags_all ?transport_protocol ?vpc_id
    ?vpn_port ?(client_connect_options = [])
    ?(client_login_banner_options = []) ~client_cidr_block
    ~server_certificate_arn ~authentication_options
    ~connection_log_options __id =
  let (r : _ Tf_core.resource) =
    make ?description ?dns_servers ?id ?security_group_ids
      ?self_service_portal ?session_timeout_hours ?split_tunnel ?tags
      ?tags_all ?transport_protocol ?vpc_id ?vpn_port
      ~client_connect_options ~client_login_banner_options
      ~client_cidr_block ~server_certificate_arn
      ~authentication_options ~connection_log_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
