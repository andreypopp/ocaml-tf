(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attachment = {
  device_index : float prop;
  instance : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attachment) -> ()

let yojson_of_attachment =
  (function
   | { device_index = v_device_index; instance = v_instance } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_device_index in
         ("device_index", arg) :: bnds
       in
       `Assoc bnds
    : attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attachment

[@@@deriving.end]

type aws_network_interface = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  interface_type : string prop option; [@option]
  ipv4_prefix_count : float prop option; [@option]
  ipv4_prefixes : string prop list option; [@option]
  ipv6_address_count : float prop option; [@option]
  ipv6_address_list : string prop list option; [@option]
  ipv6_address_list_enabled : bool prop option; [@option]
  ipv6_addresses : string prop list option; [@option]
  ipv6_prefix_count : float prop option; [@option]
  ipv6_prefixes : string prop list option; [@option]
  private_ip : string prop option; [@option]
  private_ip_list : string prop list option; [@option]
  private_ip_list_enabled : bool prop option; [@option]
  private_ips : string prop list option; [@option]
  private_ips_count : float prop option; [@option]
  security_groups : string prop list option; [@option]
  source_dest_check : bool prop option; [@option]
  subnet_id : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  attachment : attachment list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_network_interface) -> ()

let yojson_of_aws_network_interface =
  (function
   | {
       description = v_description;
       id = v_id;
       interface_type = v_interface_type;
       ipv4_prefix_count = v_ipv4_prefix_count;
       ipv4_prefixes = v_ipv4_prefixes;
       ipv6_address_count = v_ipv6_address_count;
       ipv6_address_list = v_ipv6_address_list;
       ipv6_address_list_enabled = v_ipv6_address_list_enabled;
       ipv6_addresses = v_ipv6_addresses;
       ipv6_prefix_count = v_ipv6_prefix_count;
       ipv6_prefixes = v_ipv6_prefixes;
       private_ip = v_private_ip;
       private_ip_list = v_private_ip_list;
       private_ip_list_enabled = v_private_ip_list_enabled;
       private_ips = v_private_ips;
       private_ips_count = v_private_ips_count;
       security_groups = v_security_groups;
       source_dest_check = v_source_dest_check;
       subnet_id = v_subnet_id;
       tags = v_tags;
       tags_all = v_tags_all;
       attachment = v_attachment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_attachment then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attachment) v_attachment
           in
           let bnd = "attachment", arg in
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
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_source_dest_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "source_dest_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ips_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "private_ips_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "private_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_list_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_ip_list_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "private_ip_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_prefix_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv6_prefix_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_address_list_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ipv6_address_list_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_address_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_address_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_address_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv6_address_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv4_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_prefix_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ipv4_prefix_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interface_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interface_type", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_network_interface

[@@@deriving.end]

let attachment ~device_index ~instance () : attachment =
  { device_index; instance }

let aws_network_interface ?description ?id ?interface_type
    ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
    ?ipv6_address_list ?ipv6_address_list_enabled ?ipv6_addresses
    ?ipv6_prefix_count ?ipv6_prefixes ?private_ip ?private_ip_list
    ?private_ip_list_enabled ?private_ips ?private_ips_count
    ?security_groups ?source_dest_check ?tags ?tags_all ~subnet_id
    ~attachment () : aws_network_interface =
  {
    description;
    id;
    interface_type;
    ipv4_prefix_count;
    ipv4_prefixes;
    ipv6_address_count;
    ipv6_address_list;
    ipv6_address_list_enabled;
    ipv6_addresses;
    ipv6_prefix_count;
    ipv6_prefixes;
    private_ip;
    private_ip_list;
    private_ip_list_enabled;
    private_ips;
    private_ips_count;
    security_groups;
    source_dest_check;
    subnet_id;
    tags;
    tags_all;
    attachment;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  interface_type : string prop;
  ipv4_prefix_count : float prop;
  ipv4_prefixes : string list prop;
  ipv6_address_count : float prop;
  ipv6_address_list : string list prop;
  ipv6_address_list_enabled : bool prop;
  ipv6_addresses : string list prop;
  ipv6_prefix_count : float prop;
  ipv6_prefixes : string list prop;
  mac_address : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  private_dns_name : string prop;
  private_ip : string prop;
  private_ip_list : string list prop;
  private_ip_list_enabled : bool prop;
  private_ips : string list prop;
  private_ips_count : float prop;
  security_groups : string list prop;
  source_dest_check : bool prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?interface_type ?ipv4_prefix_count
    ?ipv4_prefixes ?ipv6_address_count ?ipv6_address_list
    ?ipv6_address_list_enabled ?ipv6_addresses ?ipv6_prefix_count
    ?ipv6_prefixes ?private_ip ?private_ip_list
    ?private_ip_list_enabled ?private_ips ?private_ips_count
    ?security_groups ?source_dest_check ?tags ?tags_all ~subnet_id
    ~attachment __id =
  let __type = "aws_network_interface" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       interface_type = Prop.computed __type __id "interface_type";
       ipv4_prefix_count =
         Prop.computed __type __id "ipv4_prefix_count";
       ipv4_prefixes = Prop.computed __type __id "ipv4_prefixes";
       ipv6_address_count =
         Prop.computed __type __id "ipv6_address_count";
       ipv6_address_list =
         Prop.computed __type __id "ipv6_address_list";
       ipv6_address_list_enabled =
         Prop.computed __type __id "ipv6_address_list_enabled";
       ipv6_addresses = Prop.computed __type __id "ipv6_addresses";
       ipv6_prefix_count =
         Prop.computed __type __id "ipv6_prefix_count";
       ipv6_prefixes = Prop.computed __type __id "ipv6_prefixes";
       mac_address = Prop.computed __type __id "mac_address";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       owner_id = Prop.computed __type __id "owner_id";
       private_dns_name =
         Prop.computed __type __id "private_dns_name";
       private_ip = Prop.computed __type __id "private_ip";
       private_ip_list = Prop.computed __type __id "private_ip_list";
       private_ip_list_enabled =
         Prop.computed __type __id "private_ip_list_enabled";
       private_ips = Prop.computed __type __id "private_ips";
       private_ips_count =
         Prop.computed __type __id "private_ips_count";
       security_groups = Prop.computed __type __id "security_groups";
       source_dest_check =
         Prop.computed __type __id "source_dest_check";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_interface
        (aws_network_interface ?description ?id ?interface_type
           ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
           ?ipv6_address_list ?ipv6_address_list_enabled
           ?ipv6_addresses ?ipv6_prefix_count ?ipv6_prefixes
           ?private_ip ?private_ip_list ?private_ip_list_enabled
           ?private_ips ?private_ips_count ?security_groups
           ?source_dest_check ?tags ?tags_all ~subnet_id ~attachment
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?interface_type
    ?ipv4_prefix_count ?ipv4_prefixes ?ipv6_address_count
    ?ipv6_address_list ?ipv6_address_list_enabled ?ipv6_addresses
    ?ipv6_prefix_count ?ipv6_prefixes ?private_ip ?private_ip_list
    ?private_ip_list_enabled ?private_ips ?private_ips_count
    ?security_groups ?source_dest_check ?tags ?tags_all ~subnet_id
    ~attachment __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?interface_type ?ipv4_prefix_count
      ?ipv4_prefixes ?ipv6_address_count ?ipv6_address_list
      ?ipv6_address_list_enabled ?ipv6_addresses ?ipv6_prefix_count
      ?ipv6_prefixes ?private_ip ?private_ip_list
      ?private_ip_list_enabled ?private_ips ?private_ips_count
      ?security_groups ?source_dest_check ?tags ?tags_all ~subnet_id
      ~attachment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
