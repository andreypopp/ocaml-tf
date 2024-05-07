(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type accounts = {
  arn : string prop;
  email : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : accounts) -> ()

let yojson_of_accounts =
  (function
   | {
       arn = v_arn;
       email = v_email;
       id = v_id;
       name = v_name;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : accounts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_accounts

[@@@deriving.end]

type aws_organizations_organizational_unit_child_accounts = {
  id : string prop option; [@option]
  parent_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_organizations_organizational_unit_child_accounts) -> ()

let yojson_of_aws_organizations_organizational_unit_child_accounts =
  (function
   | { id = v_id; parent_id = v_parent_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent_id in
         ("parent_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_organizations_organizational_unit_child_accounts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_organizations_organizational_unit_child_accounts

[@@@deriving.end]

let aws_organizations_organizational_unit_child_accounts ?id
    ~parent_id () :
    aws_organizations_organizational_unit_child_accounts =
  { id; parent_id }

type t = {
  tf_name : string;
  accounts : accounts list prop;
  id : string prop;
  parent_id : string prop;
}

let make ?id ~parent_id __id =
  let __type =
    "aws_organizations_organizational_unit_child_accounts"
  in
  let __attrs =
    ({
       tf_name = __id;
       accounts = Prop.computed __type __id "accounts";
       id = Prop.computed __type __id "id";
       parent_id = Prop.computed __type __id "parent_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_organizational_unit_child_accounts
        (aws_organizations_organizational_unit_child_accounts ?id
           ~parent_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent_id __id =
  let (r : _ Tf_core.resource) = make ?id ~parent_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
