(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lightsail_lb_certificate_attachment = {
  certificate_name : string prop;  (** certificate_name *)
  id : string prop option; [@option]  (** id *)
  lb_name : string prop;  (** lb_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb_certificate_attachment *)

let aws_lightsail_lb_certificate_attachment ?id ~certificate_name
    ~lb_name () : aws_lightsail_lb_certificate_attachment =
  { certificate_name; id; lb_name }

type t = {
  certificate_name : string prop;
  id : string prop;
  lb_name : string prop;
}

let make ?id ~certificate_name ~lb_name __id =
  let __type = "aws_lightsail_lb_certificate_attachment" in
  let __attrs =
    ({
       certificate_name =
         Prop.computed __type __id "certificate_name";
       id = Prop.computed __type __id "id";
       lb_name = Prop.computed __type __id "lb_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_lb_certificate_attachment
        (aws_lightsail_lb_certificate_attachment ?id
           ~certificate_name ~lb_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~certificate_name ~lb_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~certificate_name ~lb_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
