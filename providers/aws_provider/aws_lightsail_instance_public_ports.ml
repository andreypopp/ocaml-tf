(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_instance_public_ports__port_info = {
  cidr_list_aliases : string list option; [@option]
      (** cidr_list_aliases *)
  cidrs : string list option; [@option]  (** cidrs *)
  from_port : float;  (** from_port *)
  ipv6_cidrs : string list option; [@option]  (** ipv6_cidrs *)
  protocol : string;  (** protocol *)
  to_port : float;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_lightsail_instance_public_ports__port_info *)

type aws_lightsail_instance_public_ports = {
  id : string option; [@option]  (** id *)
  instance_name : string;  (** instance_name *)
  port_info : aws_lightsail_instance_public_ports__port_info list;
}
[@@deriving yojson_of]
(** aws_lightsail_instance_public_ports *)

let aws_lightsail_instance_public_ports ?id ~instance_name ~port_info
    __resource_id =
  let __resource_type = "aws_lightsail_instance_public_ports" in
  let __resource = { id; instance_name; port_info } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_instance_public_ports __resource);
  ()
