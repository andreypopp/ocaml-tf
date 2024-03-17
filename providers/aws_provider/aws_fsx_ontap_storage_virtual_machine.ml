(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_fsx_ontap_storage_virtual_machine__active_directory_configuration__self_managed_active_directory_configuration = {
  dns_ips : string list;  (** dns_ips *)
  domain_name : string;  (** domain_name *)
  file_system_administrators_group : string option; [@option]
      (** file_system_administrators_group *)
  organizational_unit_distinguished_name : string option; [@option]
      (** organizational_unit_distinguished_name *)
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_storage_virtual_machine__active_directory_configuration__self_managed_active_directory_configuration *)

type aws_fsx_ontap_storage_virtual_machine__active_directory_configuration = {
  netbios_name : string option; [@option]  (** netbios_name *)
  self_managed_active_directory_configuration :
    aws_fsx_ontap_storage_virtual_machine__active_directory_configuration__self_managed_active_directory_configuration
    list;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_storage_virtual_machine__active_directory_configuration *)

type aws_fsx_ontap_storage_virtual_machine__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_ontap_storage_virtual_machine__timeouts *)

type aws_fsx_ontap_storage_virtual_machine__endpoints__smb = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_storage_virtual_machine__endpoints__nfs = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_storage_virtual_machine__endpoints__management = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}
[@@deriving yojson_of]

type aws_fsx_ontap_storage_virtual_machine__endpoints__iscsi = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
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
  file_system_id : string;  (** file_system_id *)
  name : string;  (** name *)
  root_volume_security_style : string option; [@option]
      (** root_volume_security_style *)
  svm_admin_password : string option; [@option]
      (** svm_admin_password *)
  tags : (string * string) list option; [@option]  (** tags *)
  active_directory_configuration :
    aws_fsx_ontap_storage_virtual_machine__active_directory_configuration
    list;
  timeouts : aws_fsx_ontap_storage_virtual_machine__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_ontap_storage_virtual_machine *)

let aws_fsx_ontap_storage_virtual_machine ?root_volume_security_style
    ?svm_admin_password ?tags ?timeouts ~file_system_id ~name
    ~active_directory_configuration __resource_id =
  let __resource_type = "aws_fsx_ontap_storage_virtual_machine" in
  let __resource =
    {
      file_system_id;
      name;
      root_volume_security_style;
      svm_admin_password;
      tags;
      active_directory_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_ontap_storage_virtual_machine __resource);
  ()
