(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let cloudflare_access_service_token ?account_id ?duration ?id
    ?min_days_for_renewal ?zone_id ~name __resource_id =
  let __resource_type = "cloudflare_access_service_token" in
  let __resource =
    ({
       account_id;
       duration;
       id;
       min_days_for_renewal;
       name;
       zone_id;
     }
      : cloudflare_access_service_token)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_service_token __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       duration =
         Prop.computed __resource_type __resource_id "duration";
       expires_at =
         Prop.computed __resource_type __resource_id "expires_at";
       id = Prop.computed __resource_type __resource_id "id";
       min_days_for_renewal =
         Prop.computed __resource_type __resource_id
           "min_days_for_renewal";
       name = Prop.computed __resource_type __resource_id "name";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
