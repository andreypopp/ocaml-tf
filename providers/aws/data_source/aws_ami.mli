(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type block_device_mappings = {
  device_name : string prop;  (** device_name *)
  ebs : (string * string prop) list;  (** ebs *)
  no_device : string prop;  (** no_device *)
  virtual_name : string prop;  (** virtual_name *)
}

type product_codes = {
  product_code_id : string prop;  (** product_code_id *)
  product_code_type : string prop;  (** product_code_type *)
}

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_ami

val aws_ami :
  ?executable_users:string prop list ->
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?name_regex:string prop ->
  ?owners:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  unit ->
  aws_ami

val yojson_of_aws_ami : aws_ami -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  architecture : string prop;
  arn : string prop;
  block_device_mappings : block_device_mappings list prop;
  boot_mode : string prop;
  creation_date : string prop;
  deprecation_time : string prop;
  description : string prop;
  ena_support : bool prop;
  executable_users : string list prop;
  hypervisor : string prop;
  id : string prop;
  image_id : string prop;
  image_location : string prop;
  image_owner_alias : string prop;
  image_type : string prop;
  imds_support : string prop;
  include_deprecated : bool prop;
  kernel_id : string prop;
  most_recent : bool prop;
  name : string prop;
  name_regex : string prop;
  owner_id : string prop;
  owners : string list prop;
  platform : string prop;
  platform_details : string prop;
  product_codes : product_codes list prop;
  public : bool prop;
  ramdisk_id : string prop;
  root_device_name : string prop;
  root_device_type : string prop;
  root_snapshot_id : string prop;
  sriov_net_support : string prop;
  state : string prop;
  state_reason : (string * string) list prop;
  tags : (string * string) list prop;
  tpm_support : string prop;
  usage_operation : string prop;
  virtualization_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?executable_users:string prop list ->
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?name_regex:string prop ->
  ?owners:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t

val make :
  ?executable_users:string prop list ->
  ?id:string prop ->
  ?include_deprecated:bool prop ->
  ?most_recent:bool prop ->
  ?name_regex:string prop ->
  ?owners:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  filter:filter list ->
  string ->
  t Tf_core.resource
