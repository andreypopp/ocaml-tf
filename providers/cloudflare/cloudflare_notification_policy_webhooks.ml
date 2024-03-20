(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_notification_policy_webhooks = {
  account_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  secret : string prop option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_notification_policy_webhooks) -> ()

let yojson_of_cloudflare_notification_policy_webhooks =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       name = v_name;
       secret = v_secret;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_notification_policy_webhooks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_notification_policy_webhooks

[@@@deriving.end]

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
