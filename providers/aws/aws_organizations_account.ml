(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?close_on_deletion ?create_govcloud
    ?iam_user_access_to_billing ?id ?parent_id ?role_name ?tags
    ?tags_all ~email ~name __resource_id =
  let __resource_type = "aws_organizations_account" in
  let __resource =
    aws_organizations_account ?close_on_deletion ?create_govcloud
      ?iam_user_access_to_billing ?id ?parent_id ?role_name ?tags
      ?tags_all ~email ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_account __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       close_on_deletion =
         Prop.computed __resource_type __resource_id
           "close_on_deletion";
       create_govcloud =
         Prop.computed __resource_type __resource_id
           "create_govcloud";
       email = Prop.computed __resource_type __resource_id "email";
       govcloud_id =
         Prop.computed __resource_type __resource_id "govcloud_id";
       iam_user_access_to_billing =
         Prop.computed __resource_type __resource_id
           "iam_user_access_to_billing";
       id = Prop.computed __resource_type __resource_id "id";
       joined_method =
         Prop.computed __resource_type __resource_id "joined_method";
       joined_timestamp =
         Prop.computed __resource_type __resource_id
           "joined_timestamp";
       name = Prop.computed __resource_type __resource_id "name";
       parent_id =
         Prop.computed __resource_type __resource_id "parent_id";
       role_name =
         Prop.computed __resource_type __resource_id "role_name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
