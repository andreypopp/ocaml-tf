(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~hostname ~region_key ~zone_id
    __resource_id =
  let __resource_type = "cloudflare_regional_hostname" in
  let __resource =
    cloudflare_regional_hostname ?id ?timeouts ~hostname ~region_key
      ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_regional_hostname __resource);
  let __resource_attributes =
    ({
       created_on =
         Prop.computed __resource_type __resource_id "created_on";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       region_key =
         Prop.computed __resource_type __resource_id "region_key";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
