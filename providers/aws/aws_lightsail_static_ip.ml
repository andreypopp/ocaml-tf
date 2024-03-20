(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_static_ip = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_lightsail_static_ip *)

let aws_lightsail_static_ip ?id ~name () : aws_lightsail_static_ip =
  { id; name }

type t = {
  arn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
  support_code : string prop;
}

let make ?id ~name __id =
  let __type = "aws_lightsail_static_ip" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       support_code = Prop.computed __type __id "support_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_static_ip
        (aws_lightsail_static_ip ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
