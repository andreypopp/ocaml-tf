(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone = {
  account_id : string prop;
      (** Account ID to manage the zone resource in. *)
  id : string prop option; [@option]  (** id *)
  jump_start : bool prop option; [@option]
      (** Whether to scan for DNS records on creation. Ignored after zone is created. *)
  paused : bool prop option; [@option]
      (** Whether this zone is paused (traffic bypasses Cloudflare). Defaults to `false`. *)
  plan : string prop option; [@option]
      (** The name of the commercial plan to apply to the zone. Available values: `free`, `lite`, `pro`, `pro_plus`, `business`, `enterprise`, `partners_free`, `partners_pro`, `partners_business`, `partners_enterprise`. *)
  type_ : string prop option; [@option] [@key "type"]
      (** A full zone implies that DNS is hosted with Cloudflare. A partial zone is typically a partner-hosted zone or a CNAME setup. Available values: `full`, `partial`, `secondary`. Defaults to `full`. *)
  zone : string prop;
      (** The DNS zone name which will be added. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Zone resource. Zone is the basic resource for
working with Cloudflare and is roughly equivalent to a domain name
that the user purchases.
 *)

let cloudflare_zone ?id ?jump_start ?paused ?plan ?type_ ~account_id
    ~zone () : cloudflare_zone =
  { account_id; id; jump_start; paused; plan; type_; zone }

type t = {
  account_id : string prop;
  id : string prop;
  jump_start : bool prop;
  meta : (string * bool) list prop;
  name_servers : string list prop;
  paused : bool prop;
  plan : string prop;
  status : string prop;
  type_ : string prop;
  vanity_name_servers : string list prop;
  verification_key : string prop;
  zone : string prop;
}

let register ?tf_module ?id ?jump_start ?paused ?plan ?type_
    ~account_id ~zone __resource_id =
  let __resource_type = "cloudflare_zone" in
  let __resource =
    cloudflare_zone ?id ?jump_start ?paused ?plan ?type_ ~account_id
      ~zone ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       jump_start =
         Prop.computed __resource_type __resource_id "jump_start";
       meta = Prop.computed __resource_type __resource_id "meta";
       name_servers =
         Prop.computed __resource_type __resource_id "name_servers";
       paused = Prop.computed __resource_type __resource_id "paused";
       plan = Prop.computed __resource_type __resource_id "plan";
       status = Prop.computed __resource_type __resource_id "status";
       type_ = Prop.computed __resource_type __resource_id "type";
       vanity_name_servers =
         Prop.computed __resource_type __resource_id
           "vanity_name_servers";
       verification_key =
         Prop.computed __resource_type __resource_id
           "verification_key";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
