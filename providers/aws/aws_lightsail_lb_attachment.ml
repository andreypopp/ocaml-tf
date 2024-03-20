(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_lb_attachment = {
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  lb_name : string prop;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_attachment *)

let aws_lightsail_lb_attachment ?id ~instance_name ~lb_name () :
    aws_lightsail_lb_attachment =
  { id; instance_name; lb_name }

type t = {
  id : string prop;
  instance_name : string prop;
  lb_name : string prop;
}

let make ?id ~instance_name ~lb_name __id =
  let __type = "aws_lightsail_lb_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       lb_name = Prop.computed __type __id "lb_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_lb_attachment
        (aws_lightsail_lb_attachment ?id ~instance_name ~lb_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_name ~lb_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_name ~lb_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
