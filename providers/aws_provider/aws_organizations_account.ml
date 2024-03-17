(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_account = {
  close_on_deletion : bool option; [@option]
      (** close_on_deletion *)
  create_govcloud : bool option; [@option]  (** create_govcloud *)
  email : string;  (** email *)
  iam_user_access_to_billing : string option; [@option]
      (** iam_user_access_to_billing *)
  name : string;  (** name *)
  role_name : string option; [@option]  (** role_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_organizations_account *)

let aws_organizations_account ?close_on_deletion ?create_govcloud
    ?iam_user_access_to_billing ?role_name ?tags ~email ~name
    __resource_id =
  let __resource_type = "aws_organizations_account" in
  let __resource =
    {
      close_on_deletion;
      create_govcloud;
      email;
      iam_user_access_to_billing;
      name;
      role_name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_account __resource);
  ()
