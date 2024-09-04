(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_values then bnds
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

type associations = {
  subnet_id : string prop;
  transit_gateway_attachment_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : associations) -> ()

let yojson_of_associations =
  (function
   | {
       subnet_id = v_subnet_id;
       transit_gateway_attachment_id =
         v_transit_gateway_attachment_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_transit_gateway_attachment_id
         in
         ("transit_gateway_attachment_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       `Assoc bnds
    : associations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_associations

[@@@deriving.end]

type members = {
  group_ip_address : string prop;
  network_interface_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : members) -> ()

let yojson_of_members =
  (function
   | {
       group_ip_address = v_group_ip_address;
       network_interface_id = v_network_interface_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_ip_address
         in
         ("group_ip_address", arg) :: bnds
       in
       `Assoc bnds
    : members -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_members

[@@@deriving.end]

type sources = {
  group_ip_address : string prop;
  network_interface_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sources) -> ()

let yojson_of_sources =
  (function
   | {
       group_ip_address = v_group_ip_address;
       network_interface_id = v_network_interface_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_interface_id
         in
         ("network_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_ip_address
         in
         ("group_ip_address", arg) :: bnds
       in
       `Assoc bnds
    : sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sources

[@@@deriving.end]

type aws_ec2_transit_gateway_multicast_domain = {
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  transit_gateway_multicast_domain_id : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_multicast_domain) -> ()

let yojson_of_aws_ec2_transit_gateway_multicast_domain =
  (function
   | {
       id = v_id;
       tags = v_tags;
       transit_gateway_multicast_domain_id =
         v_transit_gateway_multicast_domain_id;
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
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_transit_gateway_multicast_domain_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_gateway_multicast_domain_id", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_multicast_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_multicast_domain

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ec2_transit_gateway_multicast_domain ?id ?tags
    ?transit_gateway_multicast_domain_id ?timeouts ~filter () :
    aws_ec2_transit_gateway_multicast_domain =
  { id; tags; transit_gateway_multicast_domain_id; filter; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  associations : associations list prop;
  auto_accept_shared_associations : string prop;
  id : string prop;
  igmpv2_support : string prop;
  members : members list prop;
  owner_id : string prop;
  sources : sources list prop;
  state : string prop;
  static_sources_support : string prop;
  tags : string Tf_core.assoc prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
  transit_gateway_multicast_domain_id : string prop;
}

let make ?id ?tags ?transit_gateway_multicast_domain_id ?timeouts
    ~filter __id =
  let __type = "aws_ec2_transit_gateway_multicast_domain" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       associations = Prop.computed __type __id "associations";
       auto_accept_shared_associations =
         Prop.computed __type __id "auto_accept_shared_associations";
       id = Prop.computed __type __id "id";
       igmpv2_support = Prop.computed __type __id "igmpv2_support";
       members = Prop.computed __type __id "members";
       owner_id = Prop.computed __type __id "owner_id";
       sources = Prop.computed __type __id "sources";
       state = Prop.computed __type __id "state";
       static_sources_support =
         Prop.computed __type __id "static_sources_support";
       tags = Prop.computed __type __id "tags";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
       transit_gateway_multicast_domain_id =
         Prop.computed __type __id
           "transit_gateway_multicast_domain_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_multicast_domain
        (aws_ec2_transit_gateway_multicast_domain ?id ?tags
           ?transit_gateway_multicast_domain_id ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags
    ?transit_gateway_multicast_domain_id ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?transit_gateway_multicast_domain_id ?timeouts
      ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
