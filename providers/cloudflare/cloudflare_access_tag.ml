(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let cloudflare_access_tag ?account_id ?app_count ?id ?zone_id ~name
    () : cloudflare_access_tag =
  { account_id; app_count; id; name; zone_id }

type t = {
  account_id : string prop;
  app_count : float prop;
  id : string prop;
  name : string prop;
  zone_id : string prop;
}

let make ?account_id ?app_count ?id ?zone_id ~name __id =
  let __type = "cloudflare_access_tag" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       app_count = Prop.computed __type __id "app_count";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_tag
        (cloudflare_access_tag ?account_id ?app_count ?id ?zone_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?app_count ?id ?zone_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?app_count ?id ?zone_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
