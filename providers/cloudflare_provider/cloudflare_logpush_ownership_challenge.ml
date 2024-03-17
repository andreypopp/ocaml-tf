(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_logpush_ownership_challenge = {
  account_id : string option; [@option]
      (** The account identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. *)
  destination_conf : string;
      (** Uniquely identifies a resource (such as an s3 bucket) where data will be pushed. Additional configuration parameters supported by the destination may be included. See [Logpush destination documentation](https://developers.cloudflare.com/logs/logpush/logpush-configuration-api/understanding-logpush-api/#destination). **Modifying this attribute will force creation of a new resource.** *)
  zone_id : string option; [@option]
      (** The zone identifier to target for the resource. Must provide only one of `account_id`, `zone_id`. *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare Logpush ownership
challenges to use in a Logpush Job. On it's own, doesn't do much
however this resource should be used in conjunction to create
Logpush jobs.
 *)

let cloudflare_logpush_ownership_challenge ?account_id ?zone_id
    ~destination_conf __resource_id =
  let __resource_type = "cloudflare_logpush_ownership_challenge" in
  let __resource = { account_id; destination_conf; zone_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_logpush_ownership_challenge __resource);
  ()
