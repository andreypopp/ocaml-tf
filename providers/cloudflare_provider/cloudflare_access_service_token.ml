(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_service_token = {
  account_id : string option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. *)
  duration : string option; [@option]
      (** Length of time the service token is valid for. Available values: `8760h`, `17520h`, `43800h`, `87600h`, `forever`. *)
  id : string option; [@option]  (** id *)
  min_days_for_renewal : float option; [@option]
      (** Refresh the token if terraform is run within the specified amount of days before expiration. Defaults to `0`. *)
  name : string;  (** Friendly name of the token's intent. *)
  zone_id : string option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. *)
}
[@@deriving yojson_of]
(** Access Service Tokens are used for service-to-service communication
when an application is behind Cloudflare Access.
 *)

let cloudflare_access_service_token ?account_id ?duration ?id
    ?min_days_for_renewal ?zone_id ~name __resource_id =
  let __resource_type = "cloudflare_access_service_token" in
  let __resource =
    { account_id; duration; id; min_days_for_renewal; name; zone_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_service_token __resource);
  ()
