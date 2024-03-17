(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_ontap_storage_virtual_machine__active_directory_configuration__self_managed_active_directory_configuration

type aws_fsx_ontap_storage_virtual_machine__active_directory_configuration

type aws_fsx_ontap_storage_virtual_machine__timeouts

type aws_fsx_ontap_storage_virtual_machine__endpoints__smb = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}

type aws_fsx_ontap_storage_virtual_machine__endpoints__nfs = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}

type aws_fsx_ontap_storage_virtual_machine__endpoints__management = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}

type aws_fsx_ontap_storage_virtual_machine__endpoints__iscsi = {
  dns_name : string;  (** dns_name *)
  ip_addresses : string list;  (** ip_addresses *)
}

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

type aws_fsx_ontap_storage_virtual_machine

val aws_fsx_ontap_storage_virtual_machine :
  ?id:string ->
  ?root_volume_security_style:string ->
  ?svm_admin_password:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_fsx_ontap_storage_virtual_machine__timeouts ->
  file_system_id:string ->
  name:string ->
  active_directory_configuration:
    aws_fsx_ontap_storage_virtual_machine__active_directory_configuration
    list ->
  string ->
  unit
