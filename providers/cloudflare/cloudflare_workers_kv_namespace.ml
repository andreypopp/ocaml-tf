(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_workers_kv_namespace = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  title : string prop;  (** Title value of the Worker KV Namespace. *)
}
[@@deriving yojson_of]
(** Provides the ability to manage Cloudflare Workers KV Namespace features. *)

let cloudflare_workers_kv_namespace ?id ~account_id ~title () :
    cloudflare_workers_kv_namespace =
  { account_id; id; title }

type t = {
  account_id : string prop;
  id : string prop;
  title : string prop;
}

let make ?id ~account_id ~title __id =
  let __type = "cloudflare_workers_kv_namespace" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_workers_kv_namespace
        (cloudflare_workers_kv_namespace ?id ~account_id ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~title __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id ~title __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
