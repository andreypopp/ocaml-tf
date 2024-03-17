(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_client_vpn_endpoint__authentication_options = {
  active_directory_id : string option; [@option]
      (** active_directory_id *)
  root_certificate_chain_arn : string option; [@option]
      (** root_certificate_chain_arn *)
  saml_provider_arn : string option; [@option]
      (** saml_provider_arn *)
  self_service_saml_provider_arn : string option; [@option]
      (** self_service_saml_provider_arn *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint__authentication_options *)

type aws_ec2_client_vpn_endpoint__client_connect_options = {
  enabled : bool option; [@option]  (** enabled *)
  lambda_function_arn : string option; [@option]
      (** lambda_function_arn *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint__client_connect_options *)

type aws_ec2_client_vpn_endpoint__client_login_banner_options = {
  banner_text : string option; [@option]  (** banner_text *)
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint__client_login_banner_options *)

type aws_ec2_client_vpn_endpoint__connection_log_options = {
  cloudwatch_log_group : string option; [@option]
      (** cloudwatch_log_group *)
  cloudwatch_log_stream : string option; [@option]
      (** cloudwatch_log_stream *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_ec2_client_vpn_endpoint__connection_log_options *)

type aws_ec2_client_vpn_endpoint = {
  client_cidr_block : string;  (** client_cidr_block *)
  description : string option; [@option]  (** description *)
  dns_servers : string list option; [@option]  (** dns_servers *)
  id : string option; [@option]  (** id *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  self_service_portal : string option; [@option]
      (** self_service_portal *)
  server_certificate_arn : string;  (** server_certificate_arn *)
  session_timeout_hours : float option; [@option]
      (** session_timeout_hours *)
  split_tunnel : bool option; [@option]  (** split_tunnel *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  transport_protocol : string option; [@option]
      (** transport_protocol *)
  vpc_id : string option; [@option]  (** vpc_id *)
  vpn_port : float option; [@option]  (** vpn_port *)
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
