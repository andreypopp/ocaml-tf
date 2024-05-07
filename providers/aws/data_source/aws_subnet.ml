(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_subnet = {
  availability_zone : string prop option; [@option]
  availability_zone_id : string prop option; [@option]
  cidr_block : string prop option; [@option]
  default_for_az : bool prop option; [@option]
  id : string prop option; [@option]
  ipv6_cidr_block : string prop option; [@option]
  state : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  vpc_id : string prop option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_subnet) -> ()

let yojson_of_aws_subnet =
  (function
   | {
       availability_zone = v_availability_zone;
       availability_zone_id = v_availability_zone_id;
       cidr_block = v_cidr_block;
       default_for_az = v_default_for_az;
       id = v_id;
       ipv6_cidr_block = v_ipv6_cidr_block;
       state = v_state;
       tags = v_tags;
       vpc_id = v_vpc_id;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
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
         match v_default_for_az with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_for_az", arg in
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
       `Assoc bnds
    : aws_subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_subnet

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_subnet ?availability_zone ?availability_zone_id ?cidr_block
    ?default_for_az ?id ?ipv6_cidr_block ?state ?tags ?vpc_id
    ?timeouts ~filter () : aws_subnet =
  {
    availability_zone;
    availability_zone_id;
    cidr_block;
    default_for_az;
    id;
    ipv6_cidr_block;
    state;
    tags;
    vpc_id;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  assign_ipv6_address_on_creation : bool prop;
  availability_zone : string prop;
  availability_zone_id : string prop;
  available_ip_address_count : float prop;
  cidr_block : string prop;
  customer_owned_ipv4_pool : string prop;
  default_for_az : bool prop;
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
  state : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

let make ?availability_zone ?availability_zone_id ?cidr_block
    ?default_for_az ?id ?ipv6_cidr_block ?state ?tags ?vpc_id
    ?timeouts ~filter __id =
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
       available_ip_address_count =
         Prop.computed __type __id "available_ip_address_count";
       cidr_block = Prop.computed __type __id "cidr_block";
       customer_owned_ipv4_pool =
         Prop.computed __type __id "customer_owned_ipv4_pool";
       default_for_az = Prop.computed __type __id "default_for_az";
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
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_subnet
        (aws_subnet ?availability_zone ?availability_zone_id
           ?cidr_block ?default_for_az ?id ?ipv6_cidr_block ?state
           ?tags ?vpc_id ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone ?availability_zone_id
    ?cidr_block ?default_for_az ?id ?ipv6_cidr_block ?state ?tags
    ?vpc_id ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone ?availability_zone_id ?cidr_block
      ?default_for_az ?id ?ipv6_cidr_block ?state ?tags ?vpc_id
      ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
