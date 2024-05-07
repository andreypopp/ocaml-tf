(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloud9_environment_membership = {
  environment_id : string prop;
  id : string prop option; [@option]
  permissions : string prop;
  user_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloud9_environment_membership) -> ()

let yojson_of_aws_cloud9_environment_membership =
  (function
   | {
       environment_id = v_environment_id;
       id = v_id;
       permissions = v_permissions;
       user_arn = v_user_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_arn in
         ("user_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permissions in
         ("permissions", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_environment_id
         in
         ("environment_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloud9_environment_membership ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloud9_environment_membership

[@@@deriving.end]

let aws_cloud9_environment_membership ?id ~environment_id
    ~permissions ~user_arn () : aws_cloud9_environment_membership =
  { environment_id; id; permissions; user_arn }

type t = {
  tf_name : string;
  environment_id : string prop;
  id : string prop;
  permissions : string prop;
  user_arn : string prop;
  user_id : string prop;
}

let make ?id ~environment_id ~permissions ~user_arn __id =
  let __type = "aws_cloud9_environment_membership" in
  let __attrs =
    ({
       tf_name = __id;
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       permissions = Prop.computed __type __id "permissions";
       user_arn = Prop.computed __type __id "user_arn";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloud9_environment_membership
        (aws_cloud9_environment_membership ?id ~environment_id
           ~permissions ~user_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~environment_id ~permissions ~user_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~environment_id ~permissions ~user_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
