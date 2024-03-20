(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_account = {
  close_on_deletion : bool prop option; [@option]
  create_govcloud : bool prop option; [@option]
  email : string prop;
  iam_user_access_to_billing : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parent_id : string prop option; [@option]
  role_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_account) -> ()

let yojson_of_aws_organizations_account =
  (function
   | {
       close_on_deletion = v_close_on_deletion;
       create_govcloud = v_create_govcloud;
       email = v_email;
       iam_user_access_to_billing = v_iam_user_access_to_billing;
       id = v_id;
       name = v_name;
       parent_id = v_parent_id;
       role_name = v_role_name;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_iam_user_access_to_billing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_user_access_to_billing", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         match v_create_govcloud with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_govcloud", arg in
             bnd :: bnds
       in
       let bnds =
         match v_close_on_deletion with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "close_on_deletion", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_organizations_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_account

[@@@deriving.end]

let aws_organizations_account ?close_on_deletion ?create_govcloud
    ?iam_user_access_to_billing ?id ?parent_id ?role_name ?tags
    ?tags_all ~email ~name () : aws_organizations_account =
  {
    close_on_deletion;
    create_govcloud;
    email;
    iam_user_access_to_billing;
    id;
    name;
    parent_id;
    role_name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  close_on_deletion : bool prop;
  create_govcloud : bool prop;
  email : string prop;
  govcloud_id : string prop;
  iam_user_access_to_billing : string prop;
  id : string prop;
  joined_method : string prop;
  joined_timestamp : string prop;
  name : string prop;
  parent_id : string prop;
  role_name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?close_on_deletion ?create_govcloud
    ?iam_user_access_to_billing ?id ?parent_id ?role_name ?tags
    ?tags_all ~email ~name __id =
  let __type = "aws_organizations_account" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       close_on_deletion =
         Prop.computed __type __id "close_on_deletion";
       create_govcloud = Prop.computed __type __id "create_govcloud";
       email = Prop.computed __type __id "email";
       govcloud_id = Prop.computed __type __id "govcloud_id";
       iam_user_access_to_billing =
         Prop.computed __type __id "iam_user_access_to_billing";
       id = Prop.computed __type __id "id";
       joined_method = Prop.computed __type __id "joined_method";
       joined_timestamp =
         Prop.computed __type __id "joined_timestamp";
       name = Prop.computed __type __id "name";
       parent_id = Prop.computed __type __id "parent_id";
       role_name = Prop.computed __type __id "role_name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_account
        (aws_organizations_account ?close_on_deletion
           ?create_govcloud ?iam_user_access_to_billing ?id
           ?parent_id ?role_name ?tags ?tags_all ~email ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?close_on_deletion ?create_govcloud
    ?iam_user_access_to_billing ?id ?parent_id ?role_name ?tags
    ?tags_all ~email ~name __id =
  let (r : _ Tf_core.resource) =
    make ?close_on_deletion ?create_govcloud
      ?iam_user_access_to_billing ?id ?parent_id ?role_name ?tags
      ?tags_all ~email ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
