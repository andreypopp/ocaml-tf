(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_default_vpc_dhcp_options = {
  id : string prop option; [@option]
  owner_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_default_vpc_dhcp_options) -> ()

let yojson_of_aws_default_vpc_dhcp_options =
  (function
   | {
       id = v_id;
       owner_id = v_owner_id;
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
         match v_owner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_id", arg in
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
    : aws_default_vpc_dhcp_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_default_vpc_dhcp_options

[@@@deriving.end]

let aws_default_vpc_dhcp_options ?id ?owner_id ?tags ?tags_all () :
    aws_default_vpc_dhcp_options =
  { id; owner_id; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  domain_name_servers : string prop;
  id : string prop;
  ipv6_address_preferred_lease_time : string prop;
  netbios_name_servers : string prop;
  netbios_node_type : string prop;
  ntp_servers : string prop;
  owner_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?owner_id ?tags ?tags_all __id =
  let __type = "aws_default_vpc_dhcp_options" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       domain_name_servers =
         Prop.computed __type __id "domain_name_servers";
       id = Prop.computed __type __id "id";
       ipv6_address_preferred_lease_time =
         Prop.computed __type __id
           "ipv6_address_preferred_lease_time";
       netbios_name_servers =
         Prop.computed __type __id "netbios_name_servers";
       netbios_node_type =
         Prop.computed __type __id "netbios_node_type";
       ntp_servers = Prop.computed __type __id "ntp_servers";
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
      yojson_of_aws_default_vpc_dhcp_options
        (aws_default_vpc_dhcp_options ?id ?owner_id ?tags ?tags_all
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?owner_id ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?id ?owner_id ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
