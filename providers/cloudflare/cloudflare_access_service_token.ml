(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_access_service_token = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. *)
  duration : string prop option; [@option]
      (** Length of time the service token is valid for. Available values: `8760h`, `17520h`, `43800h`, `87600h`, `forever`. *)
  id : string prop option; [@option]  (** id *)
  min_days_for_renewal : float prop option; [@option]
      (** Refresh the token if terraform is run within the specified amount of days before expiration. Defaults to `0`. *)
  name : string prop;  (** Friendly name of the token's intent. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. *)
}
[@@deriving yojson_of]
(** Access Service Tokens are used for service-to-service communication
when an application is behind Cloudflare Access.
 *)

let cloudflare_access_service_token ?account_id ?duration ?id
    ?min_days_for_renewal ?zone_id ~name () :
    cloudflare_access_service_token =
  { account_id; duration; id; min_days_for_renewal; name; zone_id }

type t = {
  account_id : string prop;
  client_id : string prop;
  client_secret : string prop;
  duration : string prop;
  expires_at : string prop;
  id : string prop;
  min_days_for_renewal : float prop;
  name : string prop;
  zone_id : string prop;
}

let make ?account_id ?duration ?id ?min_days_for_renewal ?zone_id
    ~name __id =
  let __type = "cloudflare_access_service_token" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       duration = Prop.computed __type __id "duration";
       expires_at = Prop.computed __type __id "expires_at";
       id = Prop.computed __type __id "id";
       min_days_for_renewal =
         Prop.computed __type __id "min_days_for_renewal";
       name = Prop.computed __type __id "name";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_service_token
        (cloudflare_access_service_token ?account_id ?duration ?id
           ?min_days_for_renewal ?zone_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?duration ?id
    ?min_days_for_renewal ?zone_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?duration ?id ?min_days_for_renewal ?zone_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
