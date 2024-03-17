(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_fsx_ontap_storage_virtual_machine__active_directory_configuration__self_managed_active_directory_configuration

type aws_fsx_ontap_storage_virtual_machine__active_directory_configuration

type aws_fsx_ontap_storage_virtual_machine__timeouts

type aws_fsx_ontap_storage_virtual_machine__endpoints__smb = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}

type aws_fsx_ontap_storage_virtual_machine__endpoints__nfs = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}

type aws_fsx_ontap_storage_virtual_machine__endpoints__management = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
}

type aws_fsx_ontap_storage_virtual_machine__endpoints__iscsi = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;  (** ip_addresses *)
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

type t = private {
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

val aws_fsx_ontap_storage_virtual_machine :
  ?id:string prop ->
  ?root_volume_security_style:string prop ->
  ?svm_admin_password:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_fsx_ontap_storage_virtual_machine__timeouts ->
  file_system_id:string prop ->
  name:string prop ->
  active_directory_configuration:
    aws_fsx_ontap_storage_virtual_machine__active_directory_configuration
    list ->
  string ->
  t
