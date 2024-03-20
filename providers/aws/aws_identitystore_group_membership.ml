(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_identitystore_group_membership = {
  group_id : string prop;  (** group_id *)
  id : string prop option; [@option]  (** id *)
  identity_store_id : string prop;  (** identity_store_id *)
  member_id : string prop;  (** member_id *)
}
[@@deriving yojson_of]
(** aws_identitystore_group_membership *)

let aws_identitystore_group_membership ?id ~group_id
    ~identity_store_id ~member_id () :
    aws_identitystore_group_membership =
  { group_id; id; identity_store_id; member_id }

type t = {
  group_id : string prop;
  id : string prop;
  identity_store_id : string prop;
  member_id : string prop;
  membership_id : string prop;
}

let make ?id ~group_id ~identity_store_id ~member_id __id =
  let __type = "aws_identitystore_group_membership" in
  let __attrs =
    ({
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       identity_store_id =
         Prop.computed __type __id "identity_store_id";
       member_id = Prop.computed __type __id "member_id";
       membership_id = Prop.computed __type __id "membership_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_identitystore_group_membership
        (aws_identitystore_group_membership ?id ~group_id
           ~identity_store_id ~member_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group_id ~identity_store_id ~member_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~group_id ~identity_store_id ~member_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
