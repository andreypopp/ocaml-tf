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

type active_directory_configuration__self_managed_active_directory_configuration = {
  dns_ips : string prop list;
  domain_name : string prop;
  file_system_administrators_group : string prop;
  organizational_unit_distinguished_name : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       active_directory_configuration__self_managed_active_directory_configuration) ->
  ()

let yojson_of_active_directory_configuration__self_managed_active_directory_configuration
    =
  (function
   | {
       dns_ips = v_dns_ips;
       domain_name = v_domain_name;
       file_system_administrators_group =
         v_file_system_administrators_group;
       organizational_unit_distinguished_name =
         v_organizational_unit_distinguished_name;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_organizational_unit_distinguished_name
         in
         ("organizational_unit_distinguished_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_file_system_administrators_group
         in
         ("file_system_administrators_group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_dns_ips
         in
         ("dns_ips", arg) :: bnds
       in
       `Assoc bnds
    : active_directory_configuration__self_managed_active_directory_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_active_directory_configuration__self_managed_active_directory_configuration

[@@@deriving.end]

type active_directory_configuration = {
  netbios_name : string prop;
  self_managed_active_directory_configuration :
    active_directory_configuration__self_managed_active_directory_configuration
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : active_directory_configuration) -> ()

let yojson_of_active_directory_configuration =
  (function
   | {
       netbios_name = v_netbios_name;
       self_managed_active_directory_configuration =
         v_self_managed_active_directory_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_active_directory_configuration__self_managed_active_directory_configuration
             v_self_managed_active_directory_configuration
         in
         ("self_managed_active_directory_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_netbios_name in
         ("netbios_name", arg) :: bnds
       in
       `Assoc bnds
    : active_directory_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_active_directory_configuration

[@@@deriving.end]

type endpoints__smb = {
  dns_name : string prop;
  ip_addresses : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints__smb) -> ()

let yojson_of_endpoints__smb =
  (function
   | { dns_name = v_dns_name; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : endpoints__smb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints__smb

[@@@deriving.end]

type endpoints__nfs = {
  dns_name : string prop;
  ip_addresses : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints__nfs) -> ()

let yojson_of_endpoints__nfs =
  (function
   | { dns_name = v_dns_name; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : endpoints__nfs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints__nfs

[@@@deriving.end]

type endpoints__management = {
  dns_name : string prop;
  ip_addresses : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints__management) -> ()

let yojson_of_endpoints__management =
  (function
   | { dns_name = v_dns_name; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : endpoints__management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints__management

[@@@deriving.end]

type endpoints__iscsi = {
  dns_name : string prop;
  ip_addresses : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints__iscsi) -> ()

let yojson_of_endpoints__iscsi =
  (function
   | { dns_name = v_dns_name; ip_addresses = v_ip_addresses } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_ip_addresses
         in
         ("ip_addresses", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : endpoints__iscsi -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints__iscsi

[@@@deriving.end]

type endpoints = {
  iscsi : endpoints__iscsi list;
  management : endpoints__management list;
  nfs : endpoints__nfs list;
  smb : endpoints__smb list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints) -> ()

let yojson_of_endpoints =
  (function
   | {
       iscsi = v_iscsi;
       management = v_management;
       nfs = v_nfs;
       smb = v_smb;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_endpoints__smb v_smb in
         ("smb", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_endpoints__nfs v_nfs in
         ("nfs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_endpoints__management
             v_management
         in
         ("management", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_endpoints__iscsi v_iscsi
         in
         ("iscsi", arg) :: bnds
       in
       `Assoc bnds
    : endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints

[@@@deriving.end]

type lifecycle_transition_reason = { message : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_transition_reason) -> ()

let yojson_of_lifecycle_transition_reason =
  (function
   | { message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : lifecycle_transition_reason ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_transition_reason

[@@@deriving.end]

type aws_fsx_ontap_storage_virtual_machine = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_ontap_storage_virtual_machine) -> ()

let yojson_of_aws_fsx_ontap_storage_virtual_machine =
  (function
   | { id = v_id; tags = v_tags; filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
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
    : aws_fsx_ontap_storage_virtual_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_ontap_storage_virtual_machine

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_fsx_ontap_storage_virtual_machine ?id ?tags ~filter () :
    aws_fsx_ontap_storage_virtual_machine =
  { id; tags; filter }

type t = {
  active_directory_configuration :
    active_directory_configuration list prop;
  arn : string prop;
  creation_time : string prop;
  endpoints : endpoints list prop;
  file_system_id : string prop;
  id : string prop;
  lifecycle_status : string prop;
  lifecycle_transition_reason :
    lifecycle_transition_reason list prop;
  name : string prop;
  subtype : string prop;
  tags : (string * string) list prop;
  uuid : string prop;
}

let make ?id ?tags ~filter __id =
  let __type = "aws_fsx_ontap_storage_virtual_machine" in
  let __attrs =
    ({
       active_directory_configuration =
         Prop.computed __type __id "active_directory_configuration";
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       endpoints = Prop.computed __type __id "endpoints";
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       lifecycle_status =
         Prop.computed __type __id "lifecycle_status";
       lifecycle_transition_reason =
         Prop.computed __type __id "lifecycle_transition_reason";
       name = Prop.computed __type __id "name";
       subtype = Prop.computed __type __id "subtype";
       tags = Prop.computed __type __id "tags";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_ontap_storage_virtual_machine
        (aws_fsx_ontap_storage_virtual_machine ?id ?tags ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
