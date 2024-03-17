(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_client_vpn_endpoint__authentication_options = {
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
(** aws_ec2_client_vpn_endpoint__authentication_options *)

type aws_ec2_client_vpn_endpoint__client_connect_options = {
  enabled : bool prop option; [@option]  (** enabled *)
  lambda_function_arn : string prop option; [@option]
      (** lambda_function_arn *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint__client_connect_options *)

type aws_ec2_client_vpn_endpoint__client_login_banner_options = {
  banner_text : string prop option; [@option]  (** banner_text *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint__client_login_banner_options *)

type aws_ec2_client_vpn_endpoint__connection_log_options = {
  cloudwatch_log_group : string prop option; [@option]
      (** cloudwatch_log_group *)
  cloudwatch_log_stream : string prop option; [@option]
      (** cloudwatch_log_stream *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint__connection_log_options *)

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
  authentication_options :
    aws_ec2_client_vpn_endpoint__authentication_options list;
  client_connect_options :
    aws_ec2_client_vpn_endpoint__client_connect_options list;
  client_login_banner_options :
    aws_ec2_client_vpn_endpoint__client_login_banner_options list;
  connection_log_options :
    aws_ec2_client_vpn_endpoint__connection_log_options list;
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint *)

let aws_ec2_client_vpn_endpoint ?description ?dns_servers ?id
    ?security_group_ids ?self_service_portal ?session_timeout_hours
    ?split_tunnel ?tags ?tags_all ?transport_protocol ?vpc_id
    ?vpn_port ~client_cidr_block ~server_certificate_arn
    ~authentication_options ~client_connect_options
    ~client_login_banner_options ~connection_log_options
    __resource_id =
  let __resource_type = "aws_ec2_client_vpn_endpoint" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_client_vpn_endpoint __resource);
  ()
