(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_alb_listener_certificate = {
  certificate_arn : string prop;  (** certificate_arn *)
  id : string prop option; [@option]  (** id *)
  listener_arn : string prop;  (** listener_arn *)
}
[@@deriving yojson_of]
(** aws_alb_listener_certificate *)

let aws_alb_listener_certificate ?id ~certificate_arn ~listener_arn
    () : aws_alb_listener_certificate =
  { certificate_arn; id; listener_arn }

type t = {
  certificate_arn : string prop;
  id : string prop;
  listener_arn : string prop;
}

let make ?id ~certificate_arn ~listener_arn __id =
  let __type = "aws_alb_listener_certificate" in
  let __attrs =
    ({
       certificate_arn = Prop.computed __type __id "certificate_arn";
       id = Prop.computed __type __id "id";
       listener_arn = Prop.computed __type __id "listener_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_alb_listener_certificate
        (aws_alb_listener_certificate ?id ~certificate_arn
           ~listener_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~certificate_arn ~listener_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~certificate_arn ~listener_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
