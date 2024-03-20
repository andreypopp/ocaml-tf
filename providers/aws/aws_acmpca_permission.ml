(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_acmpca_permission = {
  actions : string prop list;  (** actions *)
  certificate_authority_arn : string prop;
      (** certificate_authority_arn *)
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  source_account : string prop option; [@option]
      (** source_account *)
}
[@@deriving yojson_of]
(** aws_acmpca_permission *)

let aws_acmpca_permission ?id ?source_account ~actions
    ~certificate_authority_arn ~principal () : aws_acmpca_permission
    =
  {
    actions;
    certificate_authority_arn;
    id;
    principal;
    source_account;
  }

type t = {
  actions : string list prop;
  certificate_authority_arn : string prop;
  id : string prop;
  policy : string prop;
  principal : string prop;
  source_account : string prop;
}

let make ?id ?source_account ~actions ~certificate_authority_arn
    ~principal __id =
  let __type = "aws_acmpca_permission" in
  let __attrs =
    ({
       actions = Prop.computed __type __id "actions";
       certificate_authority_arn =
         Prop.computed __type __id "certificate_authority_arn";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       principal = Prop.computed __type __id "principal";
       source_account = Prop.computed __type __id "source_account";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acmpca_permission
        (aws_acmpca_permission ?id ?source_account ~actions
           ~certificate_authority_arn ~principal ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?source_account ~actions
    ~certificate_authority_arn ~principal __id =
  let (r : _ Tf_core.resource) =
    make ?id ?source_account ~actions ~certificate_authority_arn
      ~principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
