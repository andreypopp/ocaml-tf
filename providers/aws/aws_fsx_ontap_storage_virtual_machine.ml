(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type active_directory_configuration__self_managed_active_directory_configuration = {
  dns_ips : string prop list;
  domain_name : string prop;
  file_system_administrators_group : string prop option; [@option]
  organizational_unit_distinguished_name : string prop option;
      [@option]
  password : string prop;
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
       password = v_password;
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
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_organizational_unit_distinguished_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "organizational_unit_distinguished_name", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_file_system_administrators_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_system_administrators_group", arg in
             bnd :: bnds
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
  netbios_name : string prop option; [@option]
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
         match v_netbios_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "netbios_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : active_directory_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_active_directory_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

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

type aws_fsx_ontap_storage_virtual_machine = {
  file_system_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  root_volume_security_style : string prop option; [@option]
  svm_admin_password : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  active_directory_configuration :
    active_directory_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_ontap_storage_virtual_machine) -> ()

let yojson_of_aws_fsx_ontap_storage_virtual_machine =
  (function
   | {
       file_system_id = v_file_system_id;
       id = v_id;
       name = v_name;
       root_volume_security_style = v_root_volume_security_style;
       svm_admin_password = v_svm_admin_password;
       tags = v_tags;
       tags_all = v_tags_all;
       active_directory_configuration =
         v_active_directory_configuration;
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
         let arg =
           yojson_of_list yojson_of_active_directory_configuration
             v_active_directory_configuration
         in
         ("active_directory_configuration", arg) :: bnds
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
         match v_svm_admin_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "svm_admin_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_volume_security_style with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_volume_security_style", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_fsx_ontap_storage_virtual_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_ontap_storage_virtual_machine

[@@@deriving.end]

let active_directory_configuration__self_managed_active_directory_configuration
    ?file_system_administrators_group
    ?organizational_unit_distinguished_name ~dns_ips ~domain_name
    ~password ~username () :
    active_directory_configuration__self_managed_active_directory_configuration
    =
  {
    dns_ips;
    domain_name;
    file_system_administrators_group;
    organizational_unit_distinguished_name;
    password;
    username;
  }

let active_directory_configuration ?netbios_name
    ?(self_managed_active_directory_configuration = []) () :
    active_directory_configuration =
  { netbios_name; self_managed_active_directory_configuration }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_ontap_storage_virtual_machine ?id
    ?root_volume_security_style ?svm_admin_password ?tags ?tags_all
    ?(active_directory_configuration = []) ?timeouts ~file_system_id
    ~name () : aws_fsx_ontap_storage_virtual_machine =
  {
    file_system_id;
    id;
    name;
    root_volume_security_style;
    svm_admin_password;
    tags;
    tags_all;
    active_directory_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  endpoints : endpoints list prop;
  file_system_id : string prop;
  id : string prop;
  name : string prop;
  root_volume_security_style : string prop;
  subtype : string prop;
  svm_admin_password : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uuid : string prop;
}

let make ?id ?root_volume_security_style ?svm_admin_password ?tags
    ?tags_all ?(active_directory_configuration = []) ?timeouts
    ~file_system_id ~name __id =
  let __type = "aws_fsx_ontap_storage_virtual_machine" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       endpoints = Prop.computed __type __id "endpoints";
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       root_volume_security_style =
         Prop.computed __type __id "root_volume_security_style";
       subtype = Prop.computed __type __id "subtype";
       svm_admin_password =
         Prop.computed __type __id "svm_admin_password";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_ontap_storage_virtual_machine
        (aws_fsx_ontap_storage_virtual_machine ?id
           ?root_volume_security_style ?svm_admin_password ?tags
           ?tags_all ~active_directory_configuration ?timeouts
           ~file_system_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?root_volume_security_style
    ?svm_admin_password ?tags ?tags_all
    ?(active_directory_configuration = []) ?timeouts ~file_system_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?root_volume_security_style ?svm_admin_password ?tags
      ?tags_all ~active_directory_configuration ?timeouts
      ~file_system_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
