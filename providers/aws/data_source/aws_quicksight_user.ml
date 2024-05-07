(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_quicksight_user = {
  aws_account_id : string prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_quicksight_user) -> ()

let yojson_of_aws_quicksight_user =
  (function
   | {
       aws_account_id = v_aws_account_id;
       id = v_id;
       namespace = v_namespace;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
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
         match v_aws_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_quicksight_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_quicksight_user

[@@@deriving.end]

let aws_quicksight_user ?aws_account_id ?id ?namespace ~user_name ()
    : aws_quicksight_user =
  { aws_account_id; id; namespace; user_name }

type t = {
  tf_name : string;
  active : bool prop;
  arn : string prop;
  aws_account_id : string prop;
  email : string prop;
  id : string prop;
  identity_type : string prop;
  namespace : string prop;
  principal_id : string prop;
  user_name : string prop;
  user_role : string prop;
}

let make ?aws_account_id ?id ?namespace ~user_name __id =
  let __type = "aws_quicksight_user" in
  let __attrs =
    ({
       tf_name = __id;
       active = Prop.computed __type __id "active";
       arn = Prop.computed __type __id "arn";
       aws_account_id = Prop.computed __type __id "aws_account_id";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       identity_type = Prop.computed __type __id "identity_type";
       namespace = Prop.computed __type __id "namespace";
       principal_id = Prop.computed __type __id "principal_id";
       user_name = Prop.computed __type __id "user_name";
       user_role = Prop.computed __type __id "user_role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_quicksight_user
        (aws_quicksight_user ?aws_account_id ?id ?namespace
           ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_account_id ?id ?namespace ~user_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?aws_account_id ?id ?namespace ~user_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
