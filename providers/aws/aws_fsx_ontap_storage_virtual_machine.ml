(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type active_directory_configuration__self_managed_active_directory_configuration = {
  dns_ips : string prop list;  (** dns_ips *)
  domain_name : string prop;  (** domain_name *)
  file_system_administrators_group : string prop option; [@option]
      (** file_system_administrators_group *)
  organizational_unit_distinguished_name : string prop option;
      [@option]
      (** organizational_unit_distinguished_name *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** active_directory_configuration__self_managed_active_directory_configuration *)

type active_directory_configuration = {
  netbios_name : string prop option; [@option]  (** netbios_name *)
  self_managed_active_directory_configuration :
    active_directory_configuration__self_managed_active_directory_configuration
    list;
}
[@@deriving yojson_of]
(** active_directory_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type endpoints__smb = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type endpoints__nfs = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type endpoints__management = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type endpoints__iscsi = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type endpoints = {
  iscsi : endpoints__iscsi list;  (** iscsi *)
  management : endpoints__management list;  (** management *)
  nfs : endpoints__nfs list;  (** nfs *)
  smb : endpoints__smb list;  (** smb *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_storage_virtual_machine = {
  file_system_id : string prop;  (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  root_volume_security_style : string prop option; [@option]
      (** root_volume_security_style *)
  svm_admin_password : string prop option; [@option]
      (** svm_admin_password *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  active_directory_configuration :
    active_directory_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_storage_virtual_machine *)

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
    ~self_managed_active_directory_configuration () :
    active_directory_configuration =
  { netbios_name; self_managed_active_directory_configuration }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_ontap_storage_virtual_machine ?id
    ?root_volume_security_style ?svm_admin_password ?tags ?tags_all
    ?timeouts ~file_system_id ~name ~active_directory_configuration
    () : aws_fsx_ontap_storage_virtual_machine =
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
    ?tags_all ?timeouts ~file_system_id ~name
    ~active_directory_configuration __id =
  let __type = "aws_fsx_ontap_storage_virtual_machine" in
  let __attrs =
    ({
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
           ?tags_all ?timeouts ~file_system_id ~name
           ~active_directory_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?root_volume_security_style
    ?svm_admin_password ?tags ?tags_all ?timeouts ~file_system_id
    ~name ~active_directory_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?root_volume_security_style ?svm_admin_password ?tags
      ?tags_all ?timeouts ~file_system_id ~name
      ~active_directory_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
