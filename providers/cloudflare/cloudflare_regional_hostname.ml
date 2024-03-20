(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type cloudflare_regional_hostname = {
  hostname : string prop;  (** The hostname to regionalize. *)
  id : string prop option; [@option]  (** id *)
  region_key : string prop;
      (** The region key. See [the full region list](https://developers.cloudflare.com/data-localization/regional-services/get-started/). *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** Provides a Data Localization Suite Regional Hostname. *)

let timeouts ?create ?update () : timeouts = { create; update }

let cloudflare_regional_hostname ?id ?timeouts ~hostname ~region_key
    ~zone_id () : cloudflare_regional_hostname =
  { hostname; id; region_key; zone_id; timeouts }

type t = {
  created_on : string prop;
  hostname : string prop;
  id : string prop;
  region_key : string prop;
  zone_id : string prop;
}

let make ?id ?timeouts ~hostname ~region_key ~zone_id __id =
  let __type = "cloudflare_regional_hostname" in
  let __attrs =
    ({
       created_on = Prop.computed __type __id "created_on";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       region_key = Prop.computed __type __id "region_key";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_regional_hostname
        (cloudflare_regional_hostname ?id ?timeouts ~hostname
           ~region_key ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~hostname ~region_key ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~hostname ~region_key ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
