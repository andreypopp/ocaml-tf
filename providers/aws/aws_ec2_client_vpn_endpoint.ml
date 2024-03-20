(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_options = {
  active_directory_id : string prop option; [@option]
      (** active_directory_id *)
  root_certificate_chain_arn : string prop option; [@option]
      (** root_certificate_chain_arn *)
  saml_provider_arn : string prop option; [@option]
      (** saml_provider_arn *)
  self_service_saml_provider_arn : string prop option; [@option]
      (** self_service_saml_provider_arn *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** authentication_options *)

type client_connect_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  lambda_function_arn : string prop option; [@option]
      (** lambda_function_arn *)
}
[@@deriving yojson_of]
(** client_connect_options *)

type client_login_banner_options = {
  banner_text : string prop option; [@option]  (** banner_text *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** client_login_banner_options *)

type connection_log_options = {
  cloudwatch_log_group : string prop option; [@option]
      (** cloudwatch_log_group *)
  cloudwatch_log_stream : string prop option; [@option]
      (** cloudwatch_log_stream *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** connection_log_options *)

type aws_ec2_client_vpn_endpoint = {
  client_cidr_block : string prop;  (** client_cidr_block *)
  description : string prop option; [@option]  (** description *)
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  id : string prop option; [@option]  (** id *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  self_service_portal : string prop option; [@option]
      (** self_service_portal *)
  server_certificate_arn : string prop;
      (** server_certificate_arn *)
  session_timeout_hours : float prop option; [@option]
      (** session_timeout_hours *)
  split_tunnel : bool prop option; [@option]  (** split_tunnel *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transport_protocol : string prop option; [@option]
      (** transport_protocol *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
  vpn_port : float prop option; [@option]  (** vpn_port *)
  authentication_options : authentication_options list;
  client_connect_options : client_connect_options list;
  client_login_banner_options : client_login_banner_options list;
  connection_log_options : connection_log_options list;
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint *)

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
    ?vpn_port ~client_cidr_block ~server_certificate_arn
    ~authentication_options ~client_connect_options
    ~client_login_banner_options ~connection_log_options () :
    aws_ec2_client_vpn_endpoint =
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
    ~client_cidr_block ~server_certificate_arn
    ~authentication_options ~client_connect_options
    ~client_login_banner_options ~connection_log_options __id =
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
           ?transport_protocol ?vpc_id ?vpn_port ~client_cidr_block
           ~server_certificate_arn ~authentication_options
           ~client_connect_options ~client_login_banner_options
           ~connection_log_options ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?dns_servers ?id
    ?security_group_ids ?self_service_portal ?session_timeout_hours
    ?split_tunnel ?tags ?tags_all ?transport_protocol ?vpc_id
    ?vpn_port ~client_cidr_block ~server_certificate_arn
    ~authentication_options ~client_connect_options
    ~client_login_banner_options ~connection_log_options __id =
  let (r : _ Tf_core.resource) =
    make ?description ?dns_servers ?id ?security_group_ids
      ?self_service_portal ?session_timeout_hours ?split_tunnel ?tags
      ?tags_all ?transport_protocol ?vpc_id ?vpn_port
      ~client_cidr_block ~server_certificate_arn
      ~authentication_options ~client_connect_options
      ~client_login_banner_options ~connection_log_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
