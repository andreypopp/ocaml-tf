(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~instance_name ~port_info __id =
  let __type = "aws_lightsail_instance_public_ports" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_instance_public_ports
        (aws_lightsail_instance_public_ports ?id ~instance_name
           ~port_info ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_name ~port_info __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_name ~port_info __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
