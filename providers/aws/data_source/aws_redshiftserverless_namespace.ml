(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_namespace = {
  id : string prop option; [@option]
  namespace_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_namespace) -> ()

let yojson_of_aws_redshiftserverless_namespace =
  (function
   | { id = v_id; namespace_name = v_namespace_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespace_name
         in
         ("namespace_name", arg) :: bnds
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
    : aws_redshiftserverless_namespace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_namespace

[@@@deriving.end]

let aws_redshiftserverless_namespace ?id ~namespace_name () :
    aws_redshiftserverless_namespace =
  { id; namespace_name }

type t = {
  tf_name : string;
  admin_username : string prop;
  arn : string prop;
  db_name : string prop;
  default_iam_role_arn : string prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  log_exports : string list prop;
  namespace_id : string prop;
  namespace_name : string prop;
}

let make ?id ~namespace_name __id =
  let __type = "aws_redshiftserverless_namespace" in
  let __attrs =
    ({
       tf_name = __id;
       admin_username = Prop.computed __type __id "admin_username";
       arn = Prop.computed __type __id "arn";
       db_name = Prop.computed __type __id "db_name";
       default_iam_role_arn =
         Prop.computed __type __id "default_iam_role_arn";
       iam_roles = Prop.computed __type __id "iam_roles";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       log_exports = Prop.computed __type __id "log_exports";
       namespace_id = Prop.computed __type __id "namespace_id";
       namespace_name = Prop.computed __type __id "namespace_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_namespace
        (aws_redshiftserverless_namespace ?id ~namespace_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~namespace_name __id =
  let (r : _ Tf_core.resource) = make ?id ~namespace_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
