(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_pages_domain = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  domain : string prop;
      (** Custom domain. **Modifying this attribute will force creation of a new resource.** *)
  id : string prop option; [@option]  (** id *)
  project_name : string prop;
      (** Name of the Pages Project. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a resource for managing Cloudflare Pages domains.
 *)

let cloudflare_pages_domain ?id ~account_id ~domain ~project_name ()
    : cloudflare_pages_domain =
  { account_id; domain; id; project_name }

type t = {
  account_id : string prop;
  domain : string prop;
  id : string prop;
  project_name : string prop;
  status : string prop;
}

let make ?id ~account_id ~domain ~project_name __id =
  let __type = "cloudflare_pages_domain" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       project_name = Prop.computed __type __id "project_name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_pages_domain
        (cloudflare_pages_domain ?id ~account_id ~domain
           ~project_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~domain ~project_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~domain ~project_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
