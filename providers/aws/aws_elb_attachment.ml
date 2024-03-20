(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elb_attachment = {
  elb : string prop;  (** elb *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
}
[@@deriving yojson_of]
(** aws_elb_attachment *)

let aws_elb_attachment ?id ~elb ~instance () : aws_elb_attachment =
  { elb; id; instance }

type t = {
  elb : string prop;
  id : string prop;
  instance : string prop;
}

let make ?id ~elb ~instance __id =
  let __type = "aws_elb_attachment" in
  let __attrs =
    ({
       elb = Prop.computed __type __id "elb";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elb_attachment
        (aws_elb_attachment ?id ~elb ~instance ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~elb ~instance __id =
  let (r : _ Tf_core.resource) = make ?id ~elb ~instance __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
