(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  policy_id : string prop;  (** policy_id *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  target_id : string prop;  (** target_id *)
}
[@@deriving yojson_of]
(** aws_organizations_policy_attachment *)

let aws_organizations_policy_attachment ?id ?skip_destroy ~policy_id
    ~target_id () : aws_organizations_policy_attachment =
  { id; policy_id; skip_destroy; target_id }

type t = {
  id : string prop;
  policy_id : string prop;
  skip_destroy : bool prop;
  target_id : string prop;
}

let make ?id ?skip_destroy ~policy_id ~target_id __id =
  let __type = "aws_organizations_policy_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy_id = Prop.computed __type __id "policy_id";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       target_id = Prop.computed __type __id "target_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_policy_attachment
        (aws_organizations_policy_attachment ?id ?skip_destroy
           ~policy_id ~target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?skip_destroy ~policy_id ~target_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?skip_destroy ~policy_id ~target_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
