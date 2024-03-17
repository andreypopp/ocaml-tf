(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_licensemanager_grant_accepter = {
  grant_arn : string;
      (** Amazon Resource Name (ARN) of the grant. *)
  id : string option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_licensemanager_grant_accepter *)

let aws_licensemanager_grant_accepter ?id ~grant_arn __resource_id =
  let __resource_type = "aws_licensemanager_grant_accepter" in
  let __resource = { grant_arn; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_licensemanager_grant_accepter __resource);
  ()
