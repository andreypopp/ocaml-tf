(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_inspector2_member_association = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_inspector2_member_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_inspector2_member_association ?id ?timeouts ~account_id () :
    aws_inspector2_member_association =
  { account_id; id; timeouts }

type t = {
  account_id : string prop;
  delegated_admin_account_id : string prop;
  id : string prop;
  relationship_status : string prop;
  updated_at : string prop;
}

let make ?id ?timeouts ~account_id __id =
  let __type = "aws_inspector2_member_association" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       delegated_admin_account_id =
         Prop.computed __type __id "delegated_admin_account_id";
       id = Prop.computed __type __id "id";
       relationship_status =
         Prop.computed __type __id "relationship_status";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_inspector2_member_association
        (aws_inspector2_member_association ?id ?timeouts ~account_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
