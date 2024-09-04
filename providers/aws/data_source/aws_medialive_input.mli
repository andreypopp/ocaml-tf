(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destinations__vpc = {
  availability_zone : string prop;  (** availability_zone *)
  network_interface_id : string prop;  (** network_interface_id *)
}

type destinations = {
  ip : string prop;  (** ip *)
  port : string prop;  (** port *)
  url : string prop;  (** url *)
  vpc : destinations__vpc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** vpc *)
}

type input_devices = { id : string prop  (** id *) }

type media_connect_flows = {
  flow_arn : string prop;  (** flow_arn *)
}

type sources = {
  password_param : string prop;  (** password_param *)
  url : string prop;  (** url *)
  username : string prop;  (** username *)
}

type aws_medialive_input

val aws_medialive_input :
  id:string prop -> unit -> aws_medialive_input

val yojson_of_aws_medialive_input : aws_medialive_input -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  attached_channels : string list prop;
  destinations : destinations list prop;
  id : string prop;
  input_class : string prop;
  input_devices : input_devices list prop;
  input_partner_ids : string list prop;
  input_source_type : string prop;
  media_connect_flows : media_connect_flows list prop;
  name : string prop;
  role_arn : string prop;
  security_groups : string list prop;
  sources : sources list prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

val register : ?tf_module:tf_module -> id:string prop -> string -> t
val make : id:string prop -> string -> t Tf_core.resource
