(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_macie2_invitation_accepter = {
  administrator_account_id : string prop;
      (** administrator_account_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_macie2_invitation_accepter *)

let timeouts ?create () : timeouts = { create }

let aws_macie2_invitation_accepter ?id ?timeouts
    ~administrator_account_id () : aws_macie2_invitation_accepter =
  { administrator_account_id; id; timeouts }

type t = {
  administrator_account_id : string prop;
  id : string prop;
  invitation_id : string prop;
}

let make ?id ?timeouts ~administrator_account_id __id =
  let __type = "aws_macie2_invitation_accepter" in
  let __attrs =
    ({
       administrator_account_id =
         Prop.computed __type __id "administrator_account_id";
       id = Prop.computed __type __id "id";
       invitation_id = Prop.computed __type __id "invitation_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_invitation_accepter
        (aws_macie2_invitation_accepter ?id ?timeouts
           ~administrator_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~administrator_account_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~administrator_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
