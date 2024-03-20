(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_static_ip_attachment = {
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  static_ip_name : string prop;  (** static_ip_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_static_ip_attachment *)

let aws_lightsail_static_ip_attachment ?id ~instance_name
    ~static_ip_name () : aws_lightsail_static_ip_attachment =
  { id; instance_name; static_ip_name }

type t = {
  id : string prop;
  instance_name : string prop;
  ip_address : string prop;
  static_ip_name : string prop;
}

let make ?id ~instance_name ~static_ip_name __id =
  let __type = "aws_lightsail_static_ip_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       ip_address = Prop.computed __type __id "ip_address";
       static_ip_name = Prop.computed __type __id "static_ip_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_static_ip_attachment
        (aws_lightsail_static_ip_attachment ?id ~instance_name
           ~static_ip_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_name ~static_ip_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_name ~static_ip_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
