(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_workers_kv = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  key : string prop;
      (** Name of the KV pair. **Modifying this attribute will force creation of a new resource.** *)
  namespace_id : string prop;
      (** The ID of the Workers KV namespace in which you want to create the KV pair. **Modifying this attribute will force creation of a new resource.** *)
  value : string prop;  (** Value of the KV pair. *)
}
[@@deriving yojson_of]
(** Provides a resource to manage a Cloudflare Workers KV Pair. *)

let cloudflare_workers_kv ?id ~account_id ~key ~namespace_id ~value
    () : cloudflare_workers_kv =
  { account_id; id; key; namespace_id; value }

type t = {
  account_id : string prop;
  id : string prop;
  key : string prop;
  namespace_id : string prop;
  value : string prop;
}

let make ?id ~account_id ~key ~namespace_id ~value __id =
  let __type = "cloudflare_workers_kv" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       namespace_id = Prop.computed __type __id "namespace_id";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_workers_kv
        (cloudflare_workers_kv ?id ~account_id ~key ~namespace_id
           ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~key ~namespace_id ~value
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~key ~namespace_id ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
