(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?secret ?url ~account_id ~name __id =
  let __type = "cloudflare_notification_policy_webhooks" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       last_failure = Prop.computed __type __id "last_failure";
       last_success = Prop.computed __type __id "last_success";
       name = Prop.computed __type __id "name";
       secret = Prop.computed __type __id "secret";
       type_ = Prop.computed __type __id "type";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_notification_policy_webhooks
        (cloudflare_notification_policy_webhooks ?id ?secret ?url
           ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?secret ?url ~account_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?secret ?url ~account_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
