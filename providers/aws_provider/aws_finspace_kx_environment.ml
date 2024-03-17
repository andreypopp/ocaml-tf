(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_finspace_kx_environment__custom_dns_configuration = {
  custom_dns_server_ip : string prop;  (** custom_dns_server_ip *)
  custom_dns_server_name : string prop;  (** custom_dns_server_name *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__custom_dns_configuration *)

type aws_finspace_kx_environment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__timeouts *)

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code = {
  code : float prop;  (** code *)
  type_ : float prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code *)

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__port_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration__port_range *)

type aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration = {
  cidr_block : string prop;  (** cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_action : string prop;  (** rule_action *)
  rule_number : float prop;  (** rule_number *)
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
  routable_cidr_space : string prop;  (** routable_cidr_space *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  attachment_network_acl_configuration :
    aws_finspace_kx_environment__transit_gateway_configuration__attachment_network_acl_configuration
    list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment__transit_gateway_configuration *)

type aws_finspace_kx_environment = {
  description : string prop option; [@option]  (** description *)
  kms_key_id : string prop;  (** kms_key_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  custom_dns_configuration :
    aws_finspace_kx_environment__custom_dns_configuration list;
  timeouts : aws_finspace_kx_environment__timeouts option;
  transit_gateway_configuration :
    aws_finspace_kx_environment__transit_gateway_configuration list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment *)

let aws_finspace_kx_environment ?description ?tags ?tags_all
    ?timeouts ~kms_key_id ~name ~custom_dns_configuration
    ~transit_gateway_configuration __resource_id =
  let __resource_type = "aws_finspace_kx_environment" in
  let __resource =
    {
      description;
      kms_key_id;
      name;
      tags;
      tags_all;
      custom_dns_configuration;
      timeouts;
      transit_gateway_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_environment __resource);
  ()
