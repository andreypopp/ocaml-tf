(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_identity_policy = {
  id : string prop option; [@option]  (** id *)
  identity : string prop;  (** identity *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_ses_identity_policy *)

let aws_ses_identity_policy ?id ~identity ~name ~policy () :
    aws_ses_identity_policy =
  { id; identity; name; policy }

type t = {
  id : string prop;
  identity : string prop;
  name : string prop;
  policy : string prop;
}

let make ?id ~identity ~name ~policy __id =
  let __type = "aws_ses_identity_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_identity_policy
        (aws_ses_identity_policy ?id ~identity ~name ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~identity ~name ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~identity ~name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
