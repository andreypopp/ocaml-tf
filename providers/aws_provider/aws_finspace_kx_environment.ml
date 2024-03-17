(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_environment__custom_dns_configuration = {
  custom_dns_server_ip : string;  (** custom_dns_server_ip *)
  custom_dns_server_name : string;  (** custom_dns_server_name *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__custom_dns_configuration *)

type aws_finspace_kx_environment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__timeouts *)

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code = {
  code : float;  (** code *)
  type_ : float; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code *)

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__port_range = {
  from : float;  (** from *)
  to_ : float; [@key "to"]  (** to *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__port_range *)

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration = {
  cidr_block : string;  (** cidr_block *)
  protocol : string;  (** protocol *)
  rule_action : string;  (** rule_action *)
  rule_number : float;  (** rule_number *)
  icmp_type_code :
    aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    list;
  port_range :
    aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__port_range
    list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration *)

type aws_finspace_kx_environment__transit_gateway_configuration = {
  routable_cidr_space : string;  (** routable_cidr_space *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  attachment_network_acl_configuration :
    aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration
    list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__transit_gateway_configuration *)

type aws_finspace_kx_environment = {
  description : string option; [@option]  (** description *)
  kms_key_id : string;  (** kms_key_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  custom_dns_configuration :
    aws_finspace_kx_environment__custom_dns_configuration list;
  timeouts : aws_finspace_kx_environment__timeouts option;
  transit_gateway_configuration :
    aws_finspace_kx_environment__transit_gateway_configuration list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment *)

let aws_finspace_kx_environment ?description ?tags ?timeouts
    ~kms_key_id ~name ~custom_dns_configuration
    ~transit_gateway_configuration __resource_id =
  let __resource_type = "aws_finspace_kx_environment" in
  let __resource =
    {
      description;
      kms_key_id;
      name;
      tags;
      custom_dns_configuration;
      timeouts;
      transit_gateway_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_environment __resource);
  ()
