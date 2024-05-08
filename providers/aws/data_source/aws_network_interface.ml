(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
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

type association = {
  allocation_id : string prop;
  association_id : string prop;
  carrier_ip : string prop;
  customer_owned_ip : string prop;
  ip_owner_id : string prop;
  public_dns_name : string prop;
  public_ip : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : association) -> ()

let yojson_of_association =
  (function
   | {
       allocation_id = v_allocation_id;
       association_id = v_association_id;
       carrier_ip = v_carrier_ip;
       customer_owned_ip = v_customer_owned_ip;
       ip_owner_id = v_ip_owner_id;
       public_dns_name = v_public_dns_name;
       public_ip = v_public_ip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_ip in
         ("public_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_dns_name
         in
         ("public_dns_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_owner_id in
         ("ip_owner_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_customer_owned_ip
         in
         ("customer_owned_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_carrier_ip in
         ("carrier_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_association_id
         in
         ("association_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_allocation_id in
         ("allocation_id", arg) :: bnds
       in
       `Assoc bnds
    : association -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_association

[@@@deriving.end]

type attachment = {
  attachment_id : string prop;
  device_index : float prop;
  instance_id : string prop;
  instance_owner_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attachment) -> ()

let yojson_of_attachment =
  (function
   | {
       attachment_id = v_attachment_id;
       device_index = v_device_index;
       instance_id = v_instance_id;
       instance_owner_id = v_instance_owner_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_owner_id
         in
         ("instance_owner_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_device_index in
         ("device_index", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attachment_id in
         ("attachment_id", arg) :: bnds
       in
       `Assoc bnds
    : attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attachment

[@@@deriving.end]

type aws_network_interface = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_network_interface) -> ()

let yojson_of_aws_network_interface =
  (function
   | {
       id = v_id;
       tags = v_tags;
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
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_network_interface

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_network_interface ?id ?tags ?timeouts ~filter () :
    aws_network_interface =
  { id; tags; filter; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  association : association list prop;
  attachment : attachment list prop;
  availability_zone : string prop;
  description : string prop;
  id : string prop;
  interface_type : string prop;
  ipv6_addresses : string list prop;
  mac_address : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  private_dns_name : string prop;
  private_ip : string prop;
  private_ips : string list prop;
  requester_id : string prop;
  security_groups : string list prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?tags ?timeouts ~filter __id =
  let __type = "aws_network_interface" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       association = Prop.computed __type __id "association";
       attachment = Prop.computed __type __id "attachment";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       interface_type = Prop.computed __type __id "interface_type";
       ipv6_addresses = Prop.computed __type __id "ipv6_addresses";
       mac_address = Prop.computed __type __id "mac_address";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       owner_id = Prop.computed __type __id "owner_id";
       private_dns_name =
         Prop.computed __type __id "private_dns_name";
       private_ip = Prop.computed __type __id "private_ip";
       private_ips = Prop.computed __type __id "private_ips";
       requester_id = Prop.computed __type __id "requester_id";
       security_groups = Prop.computed __type __id "security_groups";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_interface
        (aws_network_interface ?id ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
