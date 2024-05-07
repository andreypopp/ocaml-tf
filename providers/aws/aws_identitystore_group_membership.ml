(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_identitystore_group_membership = {
  group_id : string prop;
  id : string prop option; [@option]
  identity_store_id : string prop;
  member_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_identitystore_group_membership) -> ()

let yojson_of_aws_identitystore_group_membership =
  (function
   | {
       group_id = v_group_id;
       id = v_id;
       identity_store_id = v_identity_store_id;
       member_id = v_member_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_member_id in
         ("member_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_store_id
         in
         ("identity_store_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_identitystore_group_membership ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_identitystore_group_membership

[@@@deriving.end]

let aws_identitystore_group_membership ?id ~group_id
    ~identity_store_id ~member_id () :
    aws_identitystore_group_membership =
  { group_id; id; identity_store_id; member_id }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
