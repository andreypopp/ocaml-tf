(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_template = {
  html : string prop option; [@option]  (** html *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subject : string prop option; [@option]  (** subject *)
  text : string prop option; [@option]  (** text *)
}
[@@deriving yojson_of]
(** aws_ses_template *)

let aws_ses_template ?html ?id ?subject ?text ~name () :
    aws_ses_template =
  { html; id; name; subject; text }

type t = {
  arn : string prop;
  html : string prop;
  id : string prop;
  name : string prop;
  subject : string prop;
  text : string prop;
}

let make ?html ?id ?subject ?text ~name __id =
  let __type = "aws_ses_template" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       html = Prop.computed __type __id "html";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       subject = Prop.computed __type __id "subject";
       text = Prop.computed __type __id "text";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_template
        (aws_ses_template ?html ?id ?subject ?text ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?html ?id ?subject ?text ~name __id =
  let (r : _ Tf_core.resource) =
    make ?html ?id ?subject ?text ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
