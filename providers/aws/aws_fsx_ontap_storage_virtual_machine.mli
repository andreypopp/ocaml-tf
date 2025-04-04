(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoints__smb = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
}

type endpoints__nfs = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
}

type endpoints__management = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
}

type endpoints__iscsi = {
  dns_name : string prop;  (** dns_name *)
  ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** ip_addresses *)
}

type endpoints = {
  iscsi : endpoints__iscsi list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** iscsi *)
  management : endpoints__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** management *)
  nfs : endpoints__nfs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** nfs *)
  smb : endpoints__smb list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** smb *)
}

type active_directory_configuration__self_managed_active_directory_configuration

val active_directory_configuration__self_managed_active_directory_configuration :
  ?file_system_administrators_group:string prop ->
  ?organizational_unit_distinguished_name:string prop ->
  dns_ips:string prop list ->
  domain_name:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  active_directory_configuration__self_managed_active_directory_configuration

type active_directory_configuration

val active_directory_configuration :
  ?netbios_name:string prop ->
  ?self_managed_active_directory_configuration:
    active_directory_configuration__self_managed_active_directory_configuration
    list ->
  unit ->
  active_directory_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_fsx_ontap_storage_virtual_machine

val aws_fsx_ontap_storage_virtual_machine :
  ?id:string prop ->
  ?root_volume_security_style:string prop ->
  ?svm_admin_password:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?active_directory_configuration:active_directory_configuration list ->
  ?timeouts:timeouts ->
  file_system_id:string prop ->
  name:string prop ->
  unit ->
  aws_fsx_ontap_storage_virtual_machine

val yojson_of_aws_fsx_ontap_storage_virtual_machine :
  aws_fsx_ontap_storage_virtual_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  endpoints : endpoints list prop;
  file_system_id : string prop;
  id : string prop;
  name : string prop;
  root_volume_security_style : string prop;
  subtype : string prop;
  svm_admin_password : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?root_volume_security_style:string prop ->
  ?svm_admin_password:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?active_directory_configuration:active_directory_configuration list ->
  ?timeouts:timeouts ->
  file_system_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?root_volume_security_style:string prop ->
  ?svm_admin_password:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?active_directory_configuration:active_directory_configuration list ->
  ?timeouts:timeouts ->
  file_system_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
