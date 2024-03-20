(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_subnet = {
  assign_ipv6_address_on_creation : bool prop option; [@option]
      (** assign_ipv6_address_on_creation *)
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  availability_zone_id : string prop option; [@option]
      (** availability_zone_id *)
  cidr_block : string prop option; [@option]  (** cidr_block *)
  customer_owned_ipv4_pool : string prop option; [@option]
      (** customer_owned_ipv4_pool *)
  enable_dns64 : bool prop option; [@option]  (** enable_dns64 *)
  enable_lni_at_device_index : float prop option; [@option]
      (** enable_lni_at_device_index *)
  enable_resource_name_dns_a_record_on_launch : bool prop option;
      [@option]
      (** enable_resource_name_dns_a_record_on_launch *)
  enable_resource_name_dns_aaaa_record_on_launch : bool prop option;
      [@option]
      (** enable_resource_name_dns_aaaa_record_on_launch *)
  id : string prop option; [@option]  (** id *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  ipv6_native : bool prop option; [@option]  (** ipv6_native *)
  map_customer_owned_ip_on_launch : bool prop option; [@option]
      (** map_customer_owned_ip_on_launch *)
  map_public_ip_on_launch : bool prop option; [@option]
      (** map_public_ip_on_launch *)
  outpost_arn : string prop option; [@option]  (** outpost_arn *)
  private_dns_hostname_type_on_launch : string prop option; [@option]
      (** private_dns_hostname_type_on_launch *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_subnet *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_subnet ?assign_ipv6_address_on_creation ?availability_zone
    ?availability_zone_id ?cidr_block ?customer_owned_ipv4_pool
    ?enable_dns64 ?enable_lni_at_device_index
    ?enable_resource_name_dns_a_record_on_launch
    ?enable_resource_name_dns_aaaa_record_on_launch ?id
    ?ipv6_cidr_block ?ipv6_native ?map_customer_owned_ip_on_launch
    ?map_public_ip_on_launch ?outpost_arn
    ?private_dns_hostname_type_on_launch ?tags ?tags_all ?timeouts
    ~vpc_id () : aws_subnet =
  {
    assign_ipv6_address_on_creation;
    availability_zone;
    availability_zone_id;
    cidr_block;
    customer_owned_ipv4_pool;
    enable_dns64;
    enable_lni_at_device_index;
    enable_resource_name_dns_a_record_on_launch;
    enable_resource_name_dns_aaaa_record_on_launch;
    id;
    ipv6_cidr_block;
    ipv6_native;
    map_customer_owned_ip_on_launch;
    map_public_ip_on_launch;
    outpost_arn;
    private_dns_hostname_type_on_launch;
    tags;
    tags_all;
    vpc_id;
    timeouts;
  }

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

let make ?assign_ipv6_address_on_creation ?availability_zone
    ?availability_zone_id ?cidr_block ?customer_owned_ipv4_pool
    ?enable_dns64 ?enable_lni_at_device_index
    ?enable_resource_name_dns_a_record_on_launch
    ?enable_resource_name_dns_aaaa_record_on_launch ?id
    ?ipv6_cidr_block ?ipv6_native ?map_customer_owned_ip_on_launch
    ?map_public_ip_on_launch ?outpost_arn
    ?private_dns_hostname_type_on_launch ?tags ?tags_all ?timeouts
    ~vpc_id __id =
  let __type = "aws_subnet" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       assign_ipv6_address_on_creation =
         Prop.computed __type __id "assign_ipv6_address_on_creation";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       availability_zone_id =
         Prop.computed __type __id "availability_zone_id";
       cidr_block = Prop.computed __type __id "cidr_block";
       customer_owned_ipv4_pool =
         Prop.computed __type __id "customer_owned_ipv4_pool";
       enable_dns64 = Prop.computed __type __id "enable_dns64";
       enable_lni_at_device_index =
         Prop.computed __type __id "enable_lni_at_device_index";
       enable_resource_name_dns_a_record_on_launch =
         Prop.computed __type __id
           "enable_resource_name_dns_a_record_on_launch";
       enable_resource_name_dns_aaaa_record_on_launch =
         Prop.computed __type __id
           "enable_resource_name_dns_aaaa_record_on_launch";
       id = Prop.computed __type __id "id";
       ipv6_cidr_block = Prop.computed __type __id "ipv6_cidr_block";
       ipv6_cidr_block_association_id =
         Prop.computed __type __id "ipv6_cidr_block_association_id";
       ipv6_native = Prop.computed __type __id "ipv6_native";
       map_customer_owned_ip_on_launch =
         Prop.computed __type __id "map_customer_owned_ip_on_launch";
       map_public_ip_on_launch =
         Prop.computed __type __id "map_public_ip_on_launch";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       owner_id = Prop.computed __type __id "owner_id";
       private_dns_hostname_type_on_launch =
         Prop.computed __type __id
           "private_dns_hostname_type_on_launch";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_subnet
        (aws_subnet ?assign_ipv6_address_on_creation
           ?availability_zone ?availability_zone_id ?cidr_block
           ?customer_owned_ipv4_pool ?enable_dns64
           ?enable_lni_at_device_index
           ?enable_resource_name_dns_a_record_on_launch
           ?enable_resource_name_dns_aaaa_record_on_launch ?id
           ?ipv6_cidr_block ?ipv6_native
           ?map_customer_owned_ip_on_launch ?map_public_ip_on_launch
           ?outpost_arn ?private_dns_hostname_type_on_launch ?tags
           ?tags_all ?timeouts ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?assign_ipv6_address_on_creation
    ?availability_zone ?availability_zone_id ?cidr_block
    ?customer_owned_ipv4_pool ?enable_dns64
    ?enable_lni_at_device_index
    ?enable_resource_name_dns_a_record_on_launch
    ?enable_resource_name_dns_aaaa_record_on_launch ?id
    ?ipv6_cidr_block ?ipv6_native ?map_customer_owned_ip_on_launch
    ?map_public_ip_on_launch ?outpost_arn
    ?private_dns_hostname_type_on_launch ?tags ?tags_all ?timeouts
    ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?assign_ipv6_address_on_creation ?availability_zone
      ?availability_zone_id ?cidr_block ?customer_owned_ipv4_pool
      ?enable_dns64 ?enable_lni_at_device_index
      ?enable_resource_name_dns_a_record_on_launch
      ?enable_resource_name_dns_aaaa_record_on_launch ?id
      ?ipv6_cidr_block ?ipv6_native ?map_customer_owned_ip_on_launch
      ?map_public_ip_on_launch ?outpost_arn
      ?private_dns_hostname_type_on_launch ?tags ?tags_all ?timeouts
      ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
