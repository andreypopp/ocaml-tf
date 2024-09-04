(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type active_directory_configuration__self_managed_active_directory_configuration = {
  dns_ips : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dns_ips *)
  domain_name : string prop;  (** domain_name *)
  file_system_administrators_group : string prop;
      (** file_system_administrators_group *)
  organizational_unit_distinguished_name : string prop;
      (** organizational_unit_distinguished_name *)
  username : string prop;  (** username *)
}

type active_directory_configuration = {
  netbios_name : string prop;  (** netbios_name *)
  self_managed_active_directory_configuration :
    active_directory_configuration__self_managed_active_directory_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** self_managed_active_directory_configuration *)
}

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

type lifecycle_transition_reason = {
  message : string prop;  (** message *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_fsx_ontap_storage_virtual_machine

val aws_fsx_ontap_storage_virtual_machine :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  filter:filter list ->
  unit ->
  aws_fsx_ontap_storage_virtual_machine

val yojson_of_aws_fsx_ontap_storage_virtual_machine :
  aws_fsx_ontap_storage_virtual_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  filter:filter list ->
  string ->
  t Tf_core.resource
