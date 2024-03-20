(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codecommit_approval_rule_template = {
  content : string prop;  (** content *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_codecommit_approval_rule_template *)

let aws_codecommit_approval_rule_template ?description ?id ~content
    ~name () : aws_codecommit_approval_rule_template =
  { content; description; id; name }

type t = {
  approval_rule_template_id : string prop;
  content : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  last_modified_date : string prop;
  last_modified_user : string prop;
  name : string prop;
  rule_content_sha256 : string prop;
}

let make ?description ?id ~content ~name __id =
  let __type = "aws_codecommit_approval_rule_template" in
  let __attrs =
    ({
       approval_rule_template_id =
         Prop.computed __type __id "approval_rule_template_id";
       content = Prop.computed __type __id "content";
       creation_date = Prop.computed __type __id "creation_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       last_modified_user =
         Prop.computed __type __id "last_modified_user";
       name = Prop.computed __type __id "name";
       rule_content_sha256 =
         Prop.computed __type __id "rule_content_sha256";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecommit_approval_rule_template
        (aws_codecommit_approval_rule_template ?description ?id
           ~content ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~content ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~content ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
