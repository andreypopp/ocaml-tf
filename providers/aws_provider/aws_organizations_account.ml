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
    ?tags_all ~email ~name __resource_id =
  let __resource_type = "aws_organizations_account" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_account __resource);
  ()
