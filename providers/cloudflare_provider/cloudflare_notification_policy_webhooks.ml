(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_notification_policy_webhooks = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  name : string;  (** The name of the webhook destination. *)
  secret : string option; [@option]
      (** An optional secret can be provided that will be passed in the `cf-webhook-auth` header when dispatching a webhook notification. Secrets are not returned in any API response body. Refer to the [documentation](https://api.cloudflare.com/#notification-webhooks-create-webhook) for more details. *)
  url : string option; [@option]
      (** The URL of the webhook destinations. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages a webhook destination. These destinations can be tied to the notification policies created for Cloudflare's products. *)

let cloudflare_notification_policy_webhooks ?secret ?url ~account_id
    ~name __resource_id =
  let __resource_type = "cloudflare_notification_policy_webhooks" in
  let __resource = { account_id; name; secret; url } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_notification_policy_webhooks __resource);
  ()
