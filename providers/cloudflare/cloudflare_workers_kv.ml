(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~account_id ~key ~namespace_id ~value
    __resource_id =
  let __resource_type = "cloudflare_workers_kv" in
  let __resource =
    cloudflare_workers_kv ?id ~account_id ~key ~namespace_id ~value
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_workers_kv __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       namespace_id =
         Prop.computed __resource_type __resource_id "namespace_id";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
