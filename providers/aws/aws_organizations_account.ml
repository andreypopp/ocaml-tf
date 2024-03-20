(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_account = {
  close_on_deletion : bool prop option; [@option]
      (** close_on_deletion *)
  create_govcloud : bool prop option; [@option]
      (** create_govcloud *)
  email : string prop;  (** email *)
  iam_user_access_to_billing : string prop option; [@option]
      (** iam_user_access_to_billing *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  parent_id : string prop option; [@option]  (** parent_id *)
  role_name : string prop option; [@option]  (** role_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_organizations_account *)

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
