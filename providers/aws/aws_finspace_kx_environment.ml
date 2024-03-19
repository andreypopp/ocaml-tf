(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_dns_configuration = {
  custom_dns_server_ip : string prop;  (** custom_dns_server_ip *)
  custom_dns_server_name : string prop;  (** custom_dns_server_name *)
}
[@@deriving yojson_of]
(** custom_dns_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code = {
  code : float prop;  (** code *)
  type_ : float prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code *)

type transit_gateway_configuration__attachment_network_acl_configuration__port_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}
[@@deriving yojson_of]
(** transit_gateway_configuration__attachment_network_acl_configuration__port_range *)

type transit_gateway_configuration__attachment_network_acl_configuration = {
  cidr_block : string prop;  (** cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_action : string prop;  (** rule_action *)
  rule_number : float prop;  (** rule_number *)
  icmp_type_code :
    transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    list;
  port_range :
    transit_gateway_configuration__attachment_network_acl_configuration__port_range
    list;
}
[@@deriving yojson_of]
(** transit_gateway_configuration__attachment_network_acl_configuration *)

type transit_gateway_configuration = {
  routable_cidr_space : string prop;  (** routable_cidr_space *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  attachment_network_acl_configuration :
    transit_gateway_configuration__attachment_network_acl_configuration
    list;
}
[@@deriving yojson_of]
(** transit_gateway_configuration *)

type aws_finspace_kx_environment = {
  description : string prop option; [@option]  (** description *)
  kms_key_id : string prop;  (** kms_key_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  custom_dns_configuration : custom_dns_configuration list;
  timeouts : timeouts option;
  transit_gateway_configuration : transit_gateway_configuration list;
}
[@@deriving yojson_of]
(** aws_finspace_kx_environment *)

let custom_dns_configuration ~custom_dns_server_ip
    ~custom_dns_server_name () : custom_dns_configuration =
  { custom_dns_server_ip; custom_dns_server_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    ~code ~type_ () :
    transit_gateway_configuration__attachment_network_acl_configuration__icmp_type_code
    =
  { code; type_ }

let transit_gateway_configuration__attachment_network_acl_configuration__port_range
    ~from ~to_ () :
    transit_gateway_configuration__attachment_network_acl_configuration__port_range
    =
  { from; to_ }

let transit_gateway_configuration__attachment_network_acl_configuration
    ~cidr_block ~protocol ~rule_action ~rule_number ~icmp_type_code
    ~port_range () :
    transit_gateway_configuration__attachment_network_acl_configuration
    =
  {
    cidr_block;
    protocol;
    rule_action;
    rule_number;
    icmp_type_code;
    port_range;
  }

let transit_gateway_configuration ~routable_cidr_space
    ~transit_gateway_id ~attachment_network_acl_configuration () :
    transit_gateway_configuration =
  {
    routable_cidr_space;
    transit_gateway_id;
    attachment_network_acl_configuration;
  }

let aws_finspace_kx_environment ?description ?tags ?tags_all
    ?timeouts ~kms_key_id ~name ~custom_dns_configuration
    ~transit_gateway_configuration () : aws_finspace_kx_environment =
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

type t = {
  arn : string prop;
  availability_zones : string list prop;
  created_timestamp : string prop;
  description : string prop;
  id : string prop;
  infrastructure_account_id : string prop;
  kms_key_id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?tags ?tags_all ?timeouts
    ~kms_key_id ~name ~custom_dns_configuration
    ~transit_gateway_configuration __resource_id =
  let __resource_type = "aws_finspace_kx_environment" in
  let __resource =
    aws_finspace_kx_environment ?description ?tags ?tags_all
      ?timeouts ~kms_key_id ~name ~custom_dns_configuration
      ~transit_gateway_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_environment __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_zones =
         Prop.computed __resource_type __resource_id
           "availability_zones";
       created_timestamp =
         Prop.computed __resource_type __resource_id
           "created_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       infrastructure_account_id =
         Prop.computed __resource_type __resource_id
           "infrastructure_account_id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       last_modified_timestamp =
         Prop.computed __resource_type __resource_id
           "last_modified_timestamp";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
