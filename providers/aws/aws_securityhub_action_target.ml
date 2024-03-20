(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_action_target = {
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop;  (** identifier *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_securityhub_action_target *)

let aws_securityhub_action_target ?id ~description ~identifier ~name
    () : aws_securityhub_action_target =
  { description; id; identifier; name }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  identifier : string prop;
  name : string prop;
}

let make ?id ~description ~identifier ~name __id =
  let __type = "aws_securityhub_action_target" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_action_target
        (aws_securityhub_action_target ?id ~description ~identifier
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~description ~identifier ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~description ~identifier ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
