(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_logpush_ownership_challenge ?account_id ?id ?zone_id
    ~destination_conf () : cloudflare_logpush_ownership_challenge =
  { account_id; destination_conf; id; zone_id }

type t = {
  account_id : string prop;
  destination_conf : string prop;
  id : string prop;
  ownership_challenge_filename : string prop;
  zone_id : string prop;
}

let make ?account_id ?id ?zone_id ~destination_conf __id =
  let __type = "cloudflare_logpush_ownership_challenge" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       destination_conf =
         Prop.computed __type __id "destination_conf";
       id = Prop.computed __type __id "id";
       ownership_challenge_filename =
         Prop.computed __type __id "ownership_challenge_filename";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_logpush_ownership_challenge
        (cloudflare_logpush_ownership_challenge ?account_id ?id
           ?zone_id ~destination_conf ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?zone_id ~destination_conf
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?zone_id ~destination_conf __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
