(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_email_routing_address = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  email : string prop;  (** The contact email address of the user. *)
}
[@@deriving yojson_of]
(** The [Email Routing Address](https://developers.cloudflare.com/email-routing/setup/email-routing-addresses/#destination-addresses) resource allows you to manage Cloudflare Email Routing Destination Addresses.
 *)

let cloudflare_email_routing_address ~account_id ~email () :
    cloudflare_email_routing_address =
  { account_id; email }

type t = {
  account_id : string prop;
  created : string prop;
  email : string prop;
  id : string prop;
  modified : string prop;
  tag : string prop;
  verified : string prop;
}

let make ~account_id ~email __id =
  let __type = "cloudflare_email_routing_address" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       created = Prop.computed __type __id "created";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       modified = Prop.computed __type __id "modified";
       tag = Prop.computed __type __id "tag";
       verified = Prop.computed __type __id "verified";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_email_routing_address
        (cloudflare_email_routing_address ~account_id ~email ());
    attrs = __attrs;
  }

let register ?tf_module ~account_id ~email __id =
  let (r : _ Tf_core.resource) = make ~account_id ~email __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
