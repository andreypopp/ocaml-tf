(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_account_member = {
  account_id : string;
      (** Account ID to create the account member in. *)
  email_address : string;
      (** The email address of the user who you wish to manage. Following creation, this field becomes read only via the API and cannot be updated. *)
  role_ids : string list;
      (** List of account role IDs that you want to assign to a member. *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare account members.
 *)

let cloudflare_account_member ~account_id ~email_address ~role_ids
    __resource_id =
  let __resource_type = "cloudflare_account_member" in
  let __resource = { account_id; email_address; role_ids } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_account_member __resource);
  ()
