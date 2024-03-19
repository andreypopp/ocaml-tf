(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_zone_dnssec = {
  id : string prop option; [@option]  (** id *)
  modified_on : string prop option; [@option]
      (** Zone DNSSEC updated time. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare resource to create and modify zone DNSSEC settings. *)

let cloudflare_zone_dnssec ?id ?modified_on ~zone_id () :
    cloudflare_zone_dnssec =
  { id; modified_on; zone_id }

type t = {
  algorithm : string prop;
  digest : string prop;
  digest_algorithm : string prop;
  digest_type : string prop;
  ds : string prop;
  flags : float prop;
  id : string prop;
  key_tag : float prop;
  key_type : string prop;
  modified_on : string prop;
  public_key : string prop;
  status : string prop;
  zone_id : string prop;
}

let register ?tf_module ?id ?modified_on ~zone_id __resource_id =
  let __resource_type = "cloudflare_zone_dnssec" in
  let __resource =
    cloudflare_zone_dnssec ?id ?modified_on ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_zone_dnssec __resource);
  let __resource_attributes =
    ({
       algorithm =
         Prop.computed __resource_type __resource_id "algorithm";
       digest = Prop.computed __resource_type __resource_id "digest";
       digest_algorithm =
         Prop.computed __resource_type __resource_id
           "digest_algorithm";
       digest_type =
         Prop.computed __resource_type __resource_id "digest_type";
       ds = Prop.computed __resource_type __resource_id "ds";
       flags = Prop.computed __resource_type __resource_id "flags";
       id = Prop.computed __resource_type __resource_id "id";
       key_tag =
         Prop.computed __resource_type __resource_id "key_tag";
       key_type =
         Prop.computed __resource_type __resource_id "key_type";
       modified_on =
         Prop.computed __resource_type __resource_id "modified_on";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
       status = Prop.computed __resource_type __resource_id "status";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
