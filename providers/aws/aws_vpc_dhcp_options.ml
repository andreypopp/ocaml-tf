(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_dhcp_options = {
  domain_name : string prop option; [@option]
  domain_name_servers : string prop list option; [@option]
  id : string prop option; [@option]
  netbios_name_servers : string prop list option; [@option]
  netbios_node_type : string prop option; [@option]
  ntp_servers : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_dhcp_options) -> ()

let yojson_of_aws_vpc_dhcp_options =
  (function
   | {
       domain_name = v_domain_name;
       domain_name_servers = v_domain_name_servers;
       id = v_id;
       netbios_name_servers = v_netbios_name_servers;
       netbios_node_type = v_netbios_node_type;
       ntp_servers = v_ntp_servers;
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
         match v_ntp_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ntp_servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_netbios_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "netbios_node_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_netbios_name_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "netbios_name_servers", arg in
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
         match v_domain_name_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domain_name_servers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_dhcp_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_dhcp_options

[@@@deriving.end]

let aws_vpc_dhcp_options ?domain_name ?domain_name_servers ?id
    ?netbios_name_servers ?netbios_node_type ?ntp_servers ?tags
    ?tags_all () : aws_vpc_dhcp_options =
  {
    domain_name;
    domain_name_servers;
    id;
    netbios_name_servers;
    netbios_node_type;
    ntp_servers;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  domain_name_servers : string list prop;
  id : string prop;
  netbios_name_servers : string list prop;
  netbios_node_type : string prop;
  ntp_servers : string list prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?domain_name ?domain_name_servers ?id ?netbios_name_servers
    ?netbios_node_type ?ntp_servers ?tags ?tags_all __id =
  let __type = "aws_vpc_dhcp_options" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       domain_name_servers =
         Prop.computed __type __id "domain_name_servers";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_vpc_dhcp_options
        (aws_vpc_dhcp_options ?domain_name ?domain_name_servers ?id
           ?netbios_name_servers ?netbios_node_type ?ntp_servers
           ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?domain_name ?domain_name_servers ?id
    ?netbios_name_servers ?netbios_node_type ?ntp_servers ?tags
    ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?domain_name ?domain_name_servers ?id ?netbios_name_servers
      ?netbios_node_type ?ntp_servers ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
