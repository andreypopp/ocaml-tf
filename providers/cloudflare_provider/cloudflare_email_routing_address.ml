(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_email_routing_address = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  email : string prop;  (** The contact email address of the user. *)
}
[@@deriving yojson_of]
(** The [Email Routing Address](https://developers.cloudflare.com/email-routing/setup/email-routing-addresses/#destination-addresses) resource allows you to manage Cloudflare Email Routing Destination Addresses.
 *)

let cloudflare_email_routing_address ~account_id ~email __resource_id
    =
  let __resource_type = "cloudflare_email_routing_address" in
  let __resource = { account_id; email } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_email_routing_address __resource);
  ()
