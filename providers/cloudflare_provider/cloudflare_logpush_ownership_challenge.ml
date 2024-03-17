(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_logpush_ownership_challenge = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. *)
  destination_conf : string prop;
      (** Uniquely identifies a resource (such as an s3 bucket) where data will be pushed. Additional configuration parameters supported by the destination may be included. See [Logpush destination documentation](https://developers.cloudflare.com/logs/logpush/logpush-configuration-api/understanding-logpush-api/#destination). **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare Logpush ownership
challenges to use in a Logpush Job. On it's own, doesn't do much
however this resource should be used in conjunction to create
Logpush jobs.
 *)

type t = {
  account_id : string prop;
  destination_conf : string prop;
  id : string prop;
  ownership_challenge_filename : string prop;
  zone_id : string prop;
}

let cloudflare_logpush_ownership_challenge ?account_id ?id ?zone_id
    ~destination_conf __resource_id =
  let __resource_type = "cloudflare_logpush_ownership_challenge" in
  let __resource =
    ({ account_id; destination_conf; id; zone_id }
      : cloudflare_logpush_ownership_challenge)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_logpush_ownership_challenge __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       destination_conf =
         Prop.computed __resource_type __resource_id
           "destination_conf";
       id = Prop.computed __resource_type __resource_id "id";
       ownership_challenge_filename =
         Prop.computed __resource_type __resource_id
           "ownership_challenge_filename";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
