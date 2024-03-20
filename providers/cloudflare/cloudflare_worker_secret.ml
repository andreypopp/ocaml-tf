(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_worker_secret = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the Worker secret. **Modifying this attribute will force creation of a new resource.** *)
  script_name : string prop;
      (** The name of the Worker script to associate the secret with. **Modifying this attribute will force creation of a new resource.** *)
  secret_text : string prop;
      (** The text of the Worker secret. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Worker secret resource. *)

let cloudflare_worker_secret ?id ~account_id ~name ~script_name
    ~secret_text () : cloudflare_worker_secret =
  { account_id; id; name; script_name; secret_text }

type t = {
  account_id : string prop;
  id : string prop;
  name : string prop;
  script_name : string prop;
  secret_text : string prop;
}

let make ?id ~account_id ~name ~script_name ~secret_text __id =
  let __type = "cloudflare_worker_secret" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       script_name = Prop.computed __type __id "script_name";
       secret_text = Prop.computed __type __id "secret_text";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_secret
        (cloudflare_worker_secret ?id ~account_id ~name ~script_name
           ~secret_text ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~name ~script_name
    ~secret_text __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~name ~script_name ~secret_text __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
