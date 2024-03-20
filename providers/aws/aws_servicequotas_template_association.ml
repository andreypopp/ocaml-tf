(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_servicequotas_template_association = {
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
}
[@@deriving yojson_of]
(** aws_servicequotas_template_association *)

let aws_servicequotas_template_association ?skip_destroy () :
    aws_servicequotas_template_association =
  { skip_destroy }

type t = {
  id : string prop;
  skip_destroy : bool prop;
  status : string prop;
}

let make ?skip_destroy __id =
  let __type = "aws_servicequotas_template_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicequotas_template_association
        (aws_servicequotas_template_association ?skip_destroy ());
    attrs = __attrs;
  }

let register ?tf_module ?skip_destroy __id =
  let (r : _ Tf_core.resource) = make ?skip_destroy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
