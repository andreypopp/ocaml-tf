(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_inspector2_member_association = {
  account_id : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_inspector2_member_association) -> ()

let yojson_of_aws_inspector2_member_association =
  (function
   | { account_id = v_account_id; id = v_id; timeouts = v_timeouts }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_inspector2_member_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_inspector2_member_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_inspector2_member_association ?id ?timeouts ~account_id () :
    aws_inspector2_member_association =
  { account_id; id; timeouts }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
