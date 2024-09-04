(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc = {
  assign_generated_ipv6_cidr_block : bool prop option; [@option]
  cidr_block : string prop option; [@option]
  enable_dns_hostnames : bool prop option; [@option]
  enable_dns_support : bool prop option; [@option]
  enable_network_address_usage_metrics : bool prop option; [@option]
  id : string prop option; [@option]
  instance_tenancy : string prop option; [@option]
  ipv4_ipam_pool_id : string prop option; [@option]
  ipv4_netmask_length : float prop option; [@option]
  ipv6_cidr_block : string prop option; [@option]
  ipv6_cidr_block_network_border_group : string prop option;
      [@option]
  ipv6_ipam_pool_id : string prop option; [@option]
  ipv6_netmask_length : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc) -> ()

let yojson_of_aws_vpc =
  (function
   | {
       assign_generated_ipv6_cidr_block =
         v_assign_generated_ipv6_cidr_block;
       cidr_block = v_cidr_block;
       enable_dns_hostnames = v_enable_dns_hostnames;
       enable_dns_support = v_enable_dns_support;
       enable_network_address_usage_metrics =
         v_enable_network_address_usage_metrics;
       id = v_id;
       instance_tenancy = v_instance_tenancy;
       ipv4_ipam_pool_id = v_ipv4_ipam_pool_id;
       ipv4_netmask_length = v_ipv4_netmask_length;
       ipv6_cidr_block = v_ipv6_cidr_block;
       ipv6_cidr_block_network_border_group =
         v_ipv6_cidr_block_network_border_group;
       ipv6_ipam_pool_id = v_ipv6_ipam_pool_id;
       ipv6_netmask_length = v_ipv6_netmask_length;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_ipv6_netmask_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv6_netmask_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_ipam_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_ipam_pool_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_cidr_block_network_border_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_cidr_block_network_border_group", arg in
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
         match v_ipv4_netmask_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv4_netmask_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_ipam_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv4_ipam_pool_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_tenancy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_tenancy", arg in
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
         match v_enable_network_address_usage_metrics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_network_address_usage_metrics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_dns_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_dns_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_dns_hostnames with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_dns_hostnames", arg in
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
         match v_assign_generated_ipv6_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "assign_generated_ipv6_cidr_block", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc

[@@@deriving.end]

let aws_vpc ?assign_generated_ipv6_cidr_block ?cidr_block
    ?enable_dns_hostnames ?enable_dns_support
    ?enable_network_address_usage_metrics ?id ?instance_tenancy
    ?ipv4_ipam_pool_id ?ipv4_netmask_length ?ipv6_cidr_block
    ?ipv6_cidr_block_network_border_group ?ipv6_ipam_pool_id
    ?ipv6_netmask_length ?tags ?tags_all () : aws_vpc =
  {
    assign_generated_ipv6_cidr_block;
    cidr_block;
    enable_dns_hostnames;
    enable_dns_support;
    enable_network_address_usage_metrics;
    id;
    instance_tenancy;
    ipv4_ipam_pool_id;
    ipv4_netmask_length;
    ipv6_cidr_block;
    ipv6_cidr_block_network_border_group;
    ipv6_ipam_pool_id;
    ipv6_netmask_length;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  assign_generated_ipv6_cidr_block : bool prop;
  cidr_block : string prop;
  default_network_acl_id : string prop;
  default_route_table_id : string prop;
  default_security_group_id : string prop;
  dhcp_options_id : string prop;
  enable_dns_hostnames : bool prop;
  enable_dns_support : bool prop;
  enable_network_address_usage_metrics : bool prop;
  id : string prop;
  instance_tenancy : string prop;
  ipv4_ipam_pool_id : string prop;
  ipv4_netmask_length : float prop;
  ipv6_association_id : string prop;
  ipv6_cidr_block : string prop;
  ipv6_cidr_block_network_border_group : string prop;
  ipv6_ipam_pool_id : string prop;
  ipv6_netmask_length : float prop;
  main_route_table_id : string prop;
  owner_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?assign_generated_ipv6_cidr_block ?cidr_block
    ?enable_dns_hostnames ?enable_dns_support
    ?enable_network_address_usage_metrics ?id ?instance_tenancy
    ?ipv4_ipam_pool_id ?ipv4_netmask_length ?ipv6_cidr_block
    ?ipv6_cidr_block_network_border_group ?ipv6_ipam_pool_id
    ?ipv6_netmask_length ?tags ?tags_all __id =
  let __type = "aws_vpc" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       assign_generated_ipv6_cidr_block =
         Prop.computed __type __id "assign_generated_ipv6_cidr_block";
       cidr_block = Prop.computed __type __id "cidr_block";
       default_network_acl_id =
         Prop.computed __type __id "default_network_acl_id";
       default_route_table_id =
         Prop.computed __type __id "default_route_table_id";
       default_security_group_id =
         Prop.computed __type __id "default_security_group_id";
       dhcp_options_id = Prop.computed __type __id "dhcp_options_id";
       enable_dns_hostnames =
         Prop.computed __type __id "enable_dns_hostnames";
       enable_dns_support =
         Prop.computed __type __id "enable_dns_support";
       enable_network_address_usage_metrics =
         Prop.computed __type __id
           "enable_network_address_usage_metrics";
       id = Prop.computed __type __id "id";
       instance_tenancy =
         Prop.computed __type __id "instance_tenancy";
       ipv4_ipam_pool_id =
         Prop.computed __type __id "ipv4_ipam_pool_id";
       ipv4_netmask_length =
         Prop.computed __type __id "ipv4_netmask_length";
       ipv6_association_id =
         Prop.computed __type __id "ipv6_association_id";
       ipv6_cidr_block = Prop.computed __type __id "ipv6_cidr_block";
       ipv6_cidr_block_network_border_group =
         Prop.computed __type __id
           "ipv6_cidr_block_network_border_group";
       ipv6_ipam_pool_id =
         Prop.computed __type __id "ipv6_ipam_pool_id";
       ipv6_netmask_length =
         Prop.computed __type __id "ipv6_netmask_length";
       main_route_table_id =
         Prop.computed __type __id "main_route_table_id";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc
        (aws_vpc ?assign_generated_ipv6_cidr_block ?cidr_block
           ?enable_dns_hostnames ?enable_dns_support
           ?enable_network_address_usage_metrics ?id
           ?instance_tenancy ?ipv4_ipam_pool_id ?ipv4_netmask_length
           ?ipv6_cidr_block ?ipv6_cidr_block_network_border_group
           ?ipv6_ipam_pool_id ?ipv6_netmask_length ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?assign_generated_ipv6_cidr_block ?cidr_block
    ?enable_dns_hostnames ?enable_dns_support
    ?enable_network_address_usage_metrics ?id ?instance_tenancy
    ?ipv4_ipam_pool_id ?ipv4_netmask_length ?ipv6_cidr_block
    ?ipv6_cidr_block_network_border_group ?ipv6_ipam_pool_id
    ?ipv6_netmask_length ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?assign_generated_ipv6_cidr_block ?cidr_block
      ?enable_dns_hostnames ?enable_dns_support
      ?enable_network_address_usage_metrics ?id ?instance_tenancy
      ?ipv4_ipam_pool_id ?ipv4_netmask_length ?ipv6_cidr_block
      ?ipv6_cidr_block_network_border_group ?ipv6_ipam_pool_id
      ?ipv6_netmask_length ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
