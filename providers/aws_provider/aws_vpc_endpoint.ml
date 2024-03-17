(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint__dns_options = {
  dns_record_ip_type : string prop option; [@option]
      (** dns_record_ip_type *)
  private_dns_only_for_inbound_resolver_endpoint : bool prop option;
      [@option]
      (** private_dns_only_for_inbound_resolver_endpoint *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint__dns_options *)

type aws_vpc_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint__timeouts *)

type aws_vpc_endpoint__dns_entry = {
  dns_name : string prop;  (** dns_name *)
  hosted_zone_id : string prop;  (** hosted_zone_id *)
}
[@@deriving yojson_of]

type aws_vpc_endpoint = {
  auto_accept : bool prop option; [@option]  (** auto_accept *)
  id : string prop option; [@option]  (** id *)
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  policy : string prop option; [@option]  (** policy *)
  private_dns_enabled : bool prop option; [@option]
      (** private_dns_enabled *)
  route_table_ids : string prop list option; [@option]
      (** route_table_ids *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  service_name : string prop;  (** service_name *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_endpoint_type : string prop option; [@option]
      (** vpc_endpoint_type *)
  vpc_id : string prop;  (** vpc_id *)
  dns_options : aws_vpc_endpoint__dns_options list;
  timeouts : aws_vpc_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_endpoint *)

type t = {
  arn : string prop;
  auto_accept : bool prop;
  cidr_blocks : string list prop;
  dns_entry : aws_vpc_endpoint__dns_entry list prop;
  id : string prop;
  ip_address_type : string prop;
  network_interface_ids : string list prop;
  owner_id : string prop;
  policy : string prop;
  prefix_list_id : string prop;
  private_dns_enabled : bool prop;
  requester_managed : bool prop;
  route_table_ids : string list prop;
  security_group_ids : string list prop;
  service_name : string prop;
  state : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_endpoint_type : string prop;
  vpc_id : string prop;
}

let aws_vpc_endpoint ?auto_accept ?id ?ip_address_type ?policy
    ?private_dns_enabled ?route_table_ids ?security_group_ids
    ?subnet_ids ?tags ?tags_all ?vpc_endpoint_type ?timeouts
    ~service_name ~vpc_id ~dns_options __resource_id =
  let __resource_type = "aws_vpc_endpoint" in
  let __resource =
    ({
       auto_accept;
       id;
       ip_address_type;
       policy;
       private_dns_enabled;
       route_table_ids;
       security_group_ids;
       service_name;
       subnet_ids;
       tags;
       tags_all;
       vpc_endpoint_type;
       vpc_id;
       dns_options;
       timeouts;
     }
      : aws_vpc_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_accept =
         Prop.computed __resource_type __resource_id "auto_accept";
       cidr_blocks =
         Prop.computed __resource_type __resource_id "cidr_blocks";
       dns_entry =
         Prop.computed __resource_type __resource_id "dns_entry";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address_type =
         Prop.computed __resource_type __resource_id
           "ip_address_type";
       network_interface_ids =
         Prop.computed __resource_type __resource_id
           "network_interface_ids";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       policy = Prop.computed __resource_type __resource_id "policy";
       prefix_list_id =
         Prop.computed __resource_type __resource_id "prefix_list_id";
       private_dns_enabled =
         Prop.computed __resource_type __resource_id
           "private_dns_enabled";
       requester_managed =
         Prop.computed __resource_type __resource_id
           "requester_managed";
       route_table_ids =
         Prop.computed __resource_type __resource_id
           "route_table_ids";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
       state = Prop.computed __resource_type __resource_id "state";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_endpoint_type =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_type";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
