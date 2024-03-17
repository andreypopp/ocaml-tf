(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_securityhub_member = {
  account_id : string;  (** account_id *)
  email : string option; [@option]  (** email *)
  invite : bool option; [@option]  (** invite *)
}
[@@deriving yojson_of]
(** aws_securityhub_member *)

let aws_securityhub_member ?email ?invite ~account_id __resource_id =
  let __resource_type = "aws_securityhub_member" in
  let __resource = { account_id; email; invite } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_member __resource);
  ()
