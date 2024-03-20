(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_worker_domain = {
  account_id : string prop;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  environment : string prop option; [@option]
      (** The name of the Worker environment. Defaults to `production`. *)
  hostname : string prop;  (** Hostname of the Worker Domain. *)
  id : string prop option; [@option]  (** id *)
  service : string prop;
      (** Name of worker script to attach the domain to. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Creates a Worker Custom Domain. *)

let cloudflare_worker_domain ?environment ?id ~account_id ~hostname
    ~service ~zone_id () : cloudflare_worker_domain =
  { account_id; environment; hostname; id; service; zone_id }

type t = {
  account_id : string prop;
  environment : string prop;
  hostname : string prop;
  id : string prop;
  service : string prop;
  zone_id : string prop;
}

let make ?environment ?id ~account_id ~hostname ~service ~zone_id
    __id =
  let __type = "cloudflare_worker_domain" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       environment = Prop.computed __type __id "environment";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       service = Prop.computed __type __id "service";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_domain
        (cloudflare_worker_domain ?environment ?id ~account_id
           ~hostname ~service ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?environment ?id ~account_id ~hostname
    ~service ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?environment ?id ~account_id ~hostname ~service ~zone_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
