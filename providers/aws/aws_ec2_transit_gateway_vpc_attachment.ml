(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_transit_gateway_vpc_attachment = {
  appliance_mode_support : string prop option; [@option]
  dns_support : string prop option; [@option]
  id : string prop option; [@option]
  ipv6_support : string prop option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  transit_gateway_default_route_table_association : bool prop option;
      [@option]
  transit_gateway_default_route_table_propagation : bool prop option;
      [@option]
  transit_gateway_id : string prop;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_transit_gateway_vpc_attachment) -> ()

let yojson_of_aws_ec2_transit_gateway_vpc_attachment =
  (function
   | {
       appliance_mode_support = v_appliance_mode_support;
       dns_support = v_dns_support;
       id = v_id;
       ipv6_support = v_ipv6_support;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_gateway_default_route_table_association =
         v_transit_gateway_default_route_table_association;
       transit_gateway_default_route_table_propagation =
         v_transit_gateway_default_route_table_propagation;
       transit_gateway_id = v_transit_gateway_id;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transit_gateway_id
         in
         ("transit_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_transit_gateway_default_route_table_propagation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "transit_gateway_default_route_table_propagation", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_transit_gateway_default_route_table_association with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "transit_gateway_default_route_table_association", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ipv6_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_support", arg in
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
         match v_dns_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dns_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_appliance_mode_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "appliance_mode_support", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_transit_gateway_vpc_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_transit_gateway_vpc_attachment

[@@@deriving.end]

let aws_ec2_transit_gateway_vpc_attachment ?appliance_mode_support
    ?dns_support ?id ?ipv6_support ?tags ?tags_all
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation ~subnet_ids
    ~transit_gateway_id ~vpc_id () :
    aws_ec2_transit_gateway_vpc_attachment =
  {
    appliance_mode_support;
    dns_support;
    id;
    ipv6_support;
    subnet_ids;
    tags;
    tags_all;
    transit_gateway_default_route_table_association;
    transit_gateway_default_route_table_propagation;
    transit_gateway_id;
    vpc_id;
  }

type t = {
  tf_name : string;
  appliance_mode_support : string prop;
  dns_support : string prop;
  id : string prop;
  ipv6_support : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_default_route_table_association : bool prop;
  transit_gateway_default_route_table_propagation : bool prop;
  transit_gateway_id : string prop;
  vpc_id : string prop;
  vpc_owner_id : string prop;
}

let make ?appliance_mode_support ?dns_support ?id ?ipv6_support ?tags
    ?tags_all ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation ~subnet_ids
    ~transit_gateway_id ~vpc_id __id =
  let __type = "aws_ec2_transit_gateway_vpc_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       appliance_mode_support =
         Prop.computed __type __id "appliance_mode_support";
       dns_support = Prop.computed __type __id "dns_support";
       id = Prop.computed __type __id "id";
       ipv6_support = Prop.computed __type __id "ipv6_support";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_default_route_table_association =
         Prop.computed __type __id
           "transit_gateway_default_route_table_association";
       transit_gateway_default_route_table_propagation =
         Prop.computed __type __id
           "transit_gateway_default_route_table_propagation";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_owner_id = Prop.computed __type __id "vpc_owner_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_vpc_attachment
        (aws_ec2_transit_gateway_vpc_attachment
           ?appliance_mode_support ?dns_support ?id ?ipv6_support
           ?tags ?tags_all
           ?transit_gateway_default_route_table_association
           ?transit_gateway_default_route_table_propagation
           ~subnet_ids ~transit_gateway_id ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?appliance_mode_support ?dns_support ?id
    ?ipv6_support ?tags ?tags_all
    ?transit_gateway_default_route_table_association
    ?transit_gateway_default_route_table_propagation ~subnet_ids
    ~transit_gateway_id ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?appliance_mode_support ?dns_support ?id ?ipv6_support ?tags
      ?tags_all ?transit_gateway_default_route_table_association
      ?transit_gateway_default_route_table_propagation ~subnet_ids
      ~transit_gateway_id ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
