(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?modified_on ~zone_id __id =
  let __type = "cloudflare_zone_dnssec" in
  let __attrs =
    ({
       algorithm = Prop.computed __type __id "algorithm";
       digest = Prop.computed __type __id "digest";
       digest_algorithm =
         Prop.computed __type __id "digest_algorithm";
       digest_type = Prop.computed __type __id "digest_type";
       ds = Prop.computed __type __id "ds";
       flags = Prop.computed __type __id "flags";
       id = Prop.computed __type __id "id";
       key_tag = Prop.computed __type __id "key_tag";
       key_type = Prop.computed __type __id "key_type";
       modified_on = Prop.computed __type __id "modified_on";
       public_key = Prop.computed __type __id "public_key";
       status = Prop.computed __type __id "status";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_dnssec
        (cloudflare_zone_dnssec ?id ?modified_on ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?modified_on ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?modified_on ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
