(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type connect_settings = {
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  connect_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  customer_dns_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  customer_username : string prop;
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connect_settings) -> ()

let yojson_of_connect_settings =
  (function
   | {
       availability_zones = v_availability_zones;
       connect_ips = v_connect_ips;
       customer_dns_ips = v_customer_dns_ips;
       customer_username = v_customer_username;
       subnet_ids = v_subnet_ids;
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
         let arg =
           yojson_of_prop yojson_of_string v_customer_username
         in
         ("customer_username", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_customer_dns_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_customer_dns_ips
           in
           let bnd = "customer_dns_ips", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_connect_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_connect_ips
           in
           let bnd = "connect_ips", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_availability_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_availability_zones
           in
           let bnd = "availability_zones", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : connect_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connect_settings

[@@@deriving.end]

type radius_settings = {
  authentication_protocol : string prop;
  display_label : string prop;
  radius_port : float prop;
  radius_retries : float prop;
  radius_servers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  radius_timeout : float prop;
  use_same_username : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : radius_settings) -> ()

let yojson_of_radius_settings =
  (function
   | {
       authentication_protocol = v_authentication_protocol;
       display_label = v_display_label;
       radius_port = v_radius_port;
       radius_retries = v_radius_retries;
       radius_servers = v_radius_servers;
       radius_timeout = v_radius_timeout;
       use_same_username = v_use_same_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_use_same_username
         in
         ("use_same_username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_radius_timeout in
         ("radius_timeout", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_radius_servers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_radius_servers
           in
           let bnd = "radius_servers", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_radius_retries in
         ("radius_retries", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_radius_port in
         ("radius_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_label in
         ("display_label", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_protocol
         in
         ("authentication_protocol", arg) :: bnds
       in
       `Assoc bnds
    : radius_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_radius_settings

[@@@deriving.end]

type vpc_settings = {
  availability_zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_settings) -> ()

let yojson_of_vpc_settings =
  (function
   | {
       availability_zones = v_availability_zones;
       subnet_ids = v_subnet_ids;
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
         if Stdlib.( = ) [] v_availability_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_availability_zones
           in
           let bnd = "availability_zones", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vpc_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_settings

[@@@deriving.end]

type aws_directory_service_directory = {
  directory_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_directory_service_directory) -> ()

let yojson_of_aws_directory_service_directory =
  (function
   | { directory_id = v_directory_id; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_directory_service_directory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_directory

[@@@deriving.end]

let aws_directory_service_directory ?id ?tags ~directory_id () :
    aws_directory_service_directory =
  { directory_id; id; tags }

type t = {
  tf_name : string;
  access_url : string prop;
  alias : string prop;
  connect_settings : connect_settings list prop;
  description : string prop;
  directory_id : string prop;
  dns_ip_addresses : string list prop;
  edition : string prop;
  enable_sso : bool prop;
  id : string prop;
  name : string prop;
  radius_settings : radius_settings list prop;
  security_group_id : string prop;
  short_name : string prop;
  size : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  vpc_settings : vpc_settings list prop;
}

let make ?id ?tags ~directory_id __id =
  let __type = "aws_directory_service_directory" in
  let __attrs =
    ({
       tf_name = __id;
       access_url = Prop.computed __type __id "access_url";
       alias = Prop.computed __type __id "alias";
       connect_settings =
         Prop.computed __type __id "connect_settings";
       description = Prop.computed __type __id "description";
       directory_id = Prop.computed __type __id "directory_id";
       dns_ip_addresses =
         Prop.computed __type __id "dns_ip_addresses";
       edition = Prop.computed __type __id "edition";
       enable_sso = Prop.computed __type __id "enable_sso";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       radius_settings = Prop.computed __type __id "radius_settings";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       short_name = Prop.computed __type __id "short_name";
       size = Prop.computed __type __id "size";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       vpc_settings = Prop.computed __type __id "vpc_settings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_directory
        (aws_directory_service_directory ?id ?tags ~directory_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~directory_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~directory_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
