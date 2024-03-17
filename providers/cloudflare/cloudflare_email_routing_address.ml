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

type t = {
  account_id : string prop;
  created : string prop;
  email : string prop;
  id : string prop;
  modified : string prop;
  tag : string prop;
  verified : string prop;
}

let cloudflare_email_routing_address ~account_id ~email __resource_id
    =
  let __resource_type = "cloudflare_email_routing_address" in
  let __resource =
    ({ account_id; email } : cloudflare_email_routing_address)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_email_routing_address __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       created =
         Prop.computed __resource_type __resource_id "created";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       modified =
         Prop.computed __resource_type __resource_id "modified";
       tag = Prop.computed __resource_type __resource_id "tag";
       verified =
         Prop.computed __resource_type __resource_id "verified";
     }
      : t)
  in
  __resource_attributes
