(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type port_info = {
  cidr_list_aliases : string prop list option; [@option]
      (** cidr_list_aliases *)
  cidrs : string prop list option; [@option]  (** cidrs *)
  from_port : float prop;  (** from_port *)
  ipv6_cidrs : string prop list option; [@option]  (** ipv6_cidrs *)
  protocol : string prop;  (** protocol *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]
(** port_info *)

type aws_lightsail_instance_public_ports = {
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  port_info : port_info list;
}
[@@deriving yojson_of]
(** aws_lightsail_instance_public_ports *)

let port_info ?cidr_list_aliases ?cidrs ?ipv6_cidrs ~from_port
    ~protocol ~to_port () : port_info =
  {
    cidr_list_aliases;
    cidrs;
    from_port;
    ipv6_cidrs;
    protocol;
    to_port;
  }

let aws_lightsail_instance_public_ports ?id ~instance_name ~port_info
    () : aws_lightsail_instance_public_ports =
  { id; instance_name; port_info }

type t = { id : string prop; instance_name : string prop }

let register ?tf_module ?id ~instance_name ~port_info __resource_id =
  let __resource_type = "aws_lightsail_instance_public_ports" in
  let __resource =
    aws_lightsail_instance_public_ports ?id ~instance_name ~port_info
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_instance_public_ports __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_name =
         Prop.computed __resource_type __resource_id "instance_name";
     }
      : t)
  in
  __resource_attributes
