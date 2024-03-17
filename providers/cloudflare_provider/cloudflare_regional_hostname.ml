(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_regional_hostname__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** cloudflare_regional_hostname__timeouts *)

type cloudflare_regional_hostname = {
  hostname : string;  (** The hostname to regionalize. *)
  region_key : string;
      (** The region key. See [the full region list](https://developers.cloudflare.com/data-localization/regional-services/get-started/). *)
  zone_id : string;
      (** The zone identifier to target for the resource. *)
  timeouts : cloudflare_regional_hostname__timeouts option;
}
[@@deriving yojson_of]
(** Provides a Data Localization Suite Regional Hostname. *)

let cloudflare_regional_hostname ?timeouts ~hostname ~region_key
    ~zone_id __resource_id =
  let __resource_type = "cloudflare_regional_hostname" in
  let __resource = { hostname; region_key; zone_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_regional_hostname __resource);
  ()
