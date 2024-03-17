(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_tag = {
  account_id : string prop option; [@option]
      (** The account identifier to target for the resource. Conflicts with `zone_id`. **Modifying this attribute will force creation of a new resource.** *)
  app_count : float prop option; [@option]
      (** Number of apps associated with the tag. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Friendly name of the Access Tag. *)
  zone_id : string prop option; [@option]
      (** The zone identifier to target for the resource. Conflicts with `account_id`. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource to customize the pages your end users will see
when trying to reach applications behind Cloudflare Access.
 *)

type t = {
  account_id : string prop;
  app_count : float prop;
  id : string prop;
  name : string prop;
  zone_id : string prop;
}

let cloudflare_access_tag ?account_id ?app_count ?id ?zone_id ~name
    __resource_id =
  let __resource_type = "cloudflare_access_tag" in
  let __resource =
    ({ account_id; app_count; id; name; zone_id }
      : cloudflare_access_tag)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_tag __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       app_count =
         Prop.computed __resource_type __resource_id "app_count";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
