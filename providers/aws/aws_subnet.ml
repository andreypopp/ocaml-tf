(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_subnet = {
  assign_ipv6_address_on_creation : bool prop option; [@option]
  availability_zone : string prop option; [@option]
  availability_zone_id : string prop option; [@option]
  cidr_block : string prop option; [@option]
  customer_owned_ipv4_pool : string prop option; [@option]
  enable_dns64 : bool prop option; [@option]
  enable_lni_at_device_index : float prop option; [@option]
  enable_resource_name_dns_a_record_on_launch : bool prop option;
      [@option]
  enable_resource_name_dns_aaaa_record_on_launch : bool prop option;
      [@option]
  id : string prop option; [@option]
  ipv6_cidr_block : string prop option; [@option]
  ipv6_native : bool prop option; [@option]
  map_customer_owned_ip_on_launch : bool prop option; [@option]
  map_public_ip_on_launch : bool prop option; [@option]
  outpost_arn : string prop option; [@option]
  private_dns_hostname_type_on_launch : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_subnet) -> ()

let yojson_of_aws_subnet =
  (function
   | {
       assign_ipv6_address_on_creation =
         v_assign_ipv6_address_on_creation;
       availability_zone = v_availability_zone;
       availability_zone_id = v_availability_zone_id;
       cidr_block = v_cidr_block;
       customer_owned_ipv4_pool = v_customer_owned_ipv4_pool;
       enable_dns64 = v_enable_dns64;
       enable_lni_at_device_index = v_enable_lni_at_device_index;
       enable_resource_name_dns_a_record_on_launch =
         v_enable_resource_name_dns_a_record_on_launch;
       enable_resource_name_dns_aaaa_record_on_launch =
         v_enable_resource_name_dns_aaaa_record_on_launch;
       id = v_id;
       ipv6_cidr_block = v_ipv6_cidr_block;
       ipv6_native = v_ipv6_native;
       map_customer_owned_ip_on_launch =
         v_map_customer_owned_ip_on_launch;
       map_public_ip_on_launch = v_map_public_ip_on_launch;
       outpost_arn = v_outpost_arn;
       private_dns_hostname_type_on_launch =
         v_private_dns_hostname_type_on_launch;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_id = v_vpc_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_dns_hostname_type_on_launch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_dns_hostname_type_on_launch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outpost_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outpost_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_map_public_ip_on_launch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "map_public_ip_on_launch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_map_customer_owned_ip_on_launch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "map_customer_owned_ip_on_launch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_native with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ipv6_native", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_cidr_block", arg in
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
         match v_enable_resource_name_dns_aaaa_record_on_launch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enable_resource_name_dns_aaaa_record_on_launch", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_enable_resource_name_dns_a_record_on_launch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "enable_resource_name_dns_a_record_on_launch", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_enable_lni_at_device_index with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "enable_lni_at_device_index", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_dns64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_dns64", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_owned_ipv4_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_owned_ipv4_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assign_ipv6_address_on_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "assign_ipv6_address_on_creation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_subnet

[@@@deriving.end]

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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
       tf_name = __id;
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
