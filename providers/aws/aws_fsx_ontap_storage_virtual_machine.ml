(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_ontap_storage_virtual_machine__active_directory_configuration__self_managed_active_directory_configuration = {
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
(** aws_fsx_ontap_storage_virtual_machine__active_directory_configuration__self_managed_active_directory_configuration *)

type aws_fsx_ontap_storage_virtual_machine__active_directory_configuration = {
  netbios_name : string prop option; [@option]  (** netbios_name *)
  self_managed_active_directory_configuration :
    aws_fsx_ontap_storage_virtual_machine__active_directory_configuration__self_managed_active_directory_configuration
    list;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_storage_virtual_machine__active_directory_configuration *)

type aws_fsx_ontap_storage_virtual_machine__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_storage_virtual_machine__timeouts *)

type aws_fsx_ontap_storage_virtual_machine__endpoints__smb = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_storage_virtual_machine__endpoints__nfs = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_storage_virtual_machine__endpoints__management = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_storage_virtual_machine__endpoints__iscsi = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_storage_virtual_machine__endpoints = {
  iscsi :
    aws_fsx_ontap_storage_virtual_machine__endpoints__iscsi list;
      (** iscsi *)
  management :
    aws_fsx_ontap_storage_virtual_machine__endpoints__management list;
      (** management *)
  nfs : aws_fsx_ontap_storage_virtual_machine__endpoints__nfs list;
      (** nfs *)
  smb : aws_fsx_ontap_storage_virtual_machine__endpoints__smb list;
      (** smb *)
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
    aws_fsx_ontap_storage_virtual_machine__active_directory_configuration
    list;
  timeouts : aws_fsx_ontap_storage_virtual_machine__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_storage_virtual_machine *)

type t = {
  arn : string prop;
  endpoints :
    aws_fsx_ontap_storage_virtual_machine__endpoints list prop;
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

let aws_fsx_ontap_storage_virtual_machine ?id
    ?root_volume_security_style ?svm_admin_password ?tags ?tags_all
    ?timeouts ~file_system_id ~name ~active_directory_configuration
    __resource_id =
  let __resource_type = "aws_fsx_ontap_storage_virtual_machine" in
  let __resource =
    ({
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
      : aws_fsx_ontap_storage_virtual_machine)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_ontap_storage_virtual_machine __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       endpoints =
         Prop.computed __resource_type __resource_id "endpoints";
       file_system_id =
         Prop.computed __resource_type __resource_id "file_system_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       root_volume_security_style =
         Prop.computed __resource_type __resource_id
           "root_volume_security_style";
       subtype =
         Prop.computed __resource_type __resource_id "subtype";
       svm_admin_password =
         Prop.computed __resource_type __resource_id
           "svm_admin_password";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       uuid = Prop.computed __resource_type __resource_id "uuid";
     }
      : t)
  in
  __resource_attributes
