(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_notification_policy_webhooks = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the webhook destination. *)
  secret : string prop option; [@option]
      (** An optional secret can be provided that will be passed in the `cf-webhook-auth` header when dispatching a webhook notification. Secrets are not returned in any API response body. Refer to the [documentation](https://api.cloudflare.com/#notification-webhooks-create-webhook) for more details. *)
  url : string prop option; [@option]
      (** The URL of the webhook destinations. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource, that manages a webhook destination. These destinations can be tied to the notification policies created for Cloudflare's products. *)

let cloudflare_notification_policy_webhooks ?id ?secret ?url
    ~account_id ~name () : cloudflare_notification_policy_webhooks =
  { account_id; id; name; secret; url }

type t = {
  account_id : string prop;
  created_at : string prop;
  id : string prop;
  last_failure : string prop;
  last_success : string prop;
  name : string prop;
  secret : string prop;
  type_ : string prop;
  url : string prop;
}

let register ?tf_module ?id ?secret ?url ~account_id ~name
    __resource_id =
  let __resource_type = "cloudflare_notification_policy_webhooks" in
  let __resource =
    cloudflare_notification_policy_webhooks ?id ?secret ?url
      ~account_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_notification_policy_webhooks __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       last_failure =
         Prop.computed __resource_type __resource_id "last_failure";
       last_success =
         Prop.computed __resource_type __resource_id "last_success";
       name = Prop.computed __resource_type __resource_id "name";
       secret = Prop.computed __resource_type __resource_id "secret";
       type_ = Prop.computed __resource_type __resource_id "type";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
