(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_default_subnet__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_default_subnet__timeouts *)

type aws_default_subnet = {
  assign_ipv6_address_on_creation : bool prop option; [@option]
      (** assign_ipv6_address_on_creation *)
  availability_zone : string prop;  (** availability_zone *)
  customer_owned_ipv4_pool : string prop option; [@option]
      (** customer_owned_ipv4_pool *)
  enable_dns64 : bool prop option; [@option]  (** enable_dns64 *)
  enable_resource_name_dns_a_record_on_launch : bool prop option;
      [@option]
      (** enable_resource_name_dns_a_record_on_launch *)
  enable_resource_name_dns_aaaa_record_on_launch : bool prop option;
      [@option]
      (** enable_resource_name_dns_aaaa_record_on_launch *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  ipv6_native : bool prop option; [@option]  (** ipv6_native *)
  map_customer_owned_ip_on_launch : bool prop option; [@option]
      (** map_customer_owned_ip_on_launch *)
  map_public_ip_on_launch : bool prop option; [@option]
      (** map_public_ip_on_launch *)
  private_dns_hostname_type_on_launch : string prop option; [@option]
      (** private_dns_hostname_type_on_launch *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_default_subnet__timeouts option;
}
[@@deriving yojson_of]
(** aws_default_subnet *)

type t = {
  arn : string prop;
  assign_ipv6_address_on_creation : bool prop;
  availability_zone : string prop;
  availability_zone_id : string prop;
  cidr_block : string prop;
  customer_owned_ipv4_pool : string prop;
  enable_dns64 : bool prop;
  enable_lni_at_device_index : float prop;
  enable_resource_name_dns_a_record_on_launch : bool prop;
  enable_resource_name_dns_aaaa_record_on_launch : bool prop;
  existing_default_subnet : bool prop;
  force_destroy : bool prop;
  id : string prop;
  ipv6_cidr_block : string prop;
  ipv6_cidr_block_association_id : string prop;
  ipv6_native : bool prop;
  map_customer_owned_ip_on_launch : bool prop;
  map_public_ip_on_launch : bool prop;
  outpost_arn : string prop;
  owner_id : string prop;
  private_dns_hostname_type_on_launch : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let aws_default_subnet ?assign_ipv6_address_on_creation
    ?customer_owned_ipv4_pool ?enable_dns64
    ?enable_resource_name_dns_a_record_on_launch
    ?enable_resource_name_dns_aaaa_record_on_launch ?force_destroy
    ?id ?ipv6_cidr_block ?ipv6_native
    ?map_customer_owned_ip_on_launch ?map_public_ip_on_launch
    ?private_dns_hostname_type_on_launch ?tags ?tags_all ?timeouts
    ~availability_zone __resource_id =
  let __resource_type = "aws_default_subnet" in
  let __resource =
    ({
       assign_ipv6_address_on_creation;
       availability_zone;
       customer_owned_ipv4_pool;
       enable_dns64;
       enable_resource_name_dns_a_record_on_launch;
       enable_resource_name_dns_aaaa_record_on_launch;
       force_destroy;
       id;
       ipv6_cidr_block;
       ipv6_native;
       map_customer_owned_ip_on_launch;
       map_public_ip_on_launch;
       private_dns_hostname_type_on_launch;
       tags;
       tags_all;
       timeouts;
     }
      : aws_default_subnet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_subnet __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       assign_ipv6_address_on_creation =
         Prop.computed __resource_type __resource_id
           "assign_ipv6_address_on_creation";
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       availability_zone_id =
         Prop.computed __resource_type __resource_id
           "availability_zone_id";
       cidr_block =
         Prop.computed __resource_type __resource_id "cidr_block";
       customer_owned_ipv4_pool =
         Prop.computed __resource_type __resource_id
           "customer_owned_ipv4_pool";
       enable_dns64 =
         Prop.computed __resource_type __resource_id "enable_dns64";
       enable_lni_at_device_index =
         Prop.computed __resource_type __resource_id
           "enable_lni_at_device_index";
       enable_resource_name_dns_a_record_on_launch =
         Prop.computed __resource_type __resource_id
           "enable_resource_name_dns_a_record_on_launch";
       enable_resource_name_dns_aaaa_record_on_launch =
         Prop.computed __resource_type __resource_id
           "enable_resource_name_dns_aaaa_record_on_launch";
       existing_default_subnet =
         Prop.computed __resource_type __resource_id
           "existing_default_subnet";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       ipv6_cidr_block =
         Prop.computed __resource_type __resource_id
           "ipv6_cidr_block";
       ipv6_cidr_block_association_id =
         Prop.computed __resource_type __resource_id
           "ipv6_cidr_block_association_id";
       ipv6_native =
         Prop.computed __resource_type __resource_id "ipv6_native";
       map_customer_owned_ip_on_launch =
         Prop.computed __resource_type __resource_id
           "map_customer_owned_ip_on_launch";
       map_public_ip_on_launch =
         Prop.computed __resource_type __resource_id
           "map_public_ip_on_launch";
       outpost_arn =
         Prop.computed __resource_type __resource_id "outpost_arn";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       private_dns_hostname_type_on_launch =
         Prop.computed __resource_type __resource_id
           "private_dns_hostname_type_on_launch";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
