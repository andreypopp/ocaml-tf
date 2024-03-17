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
    __resource_id =
  let __resource_type = "cloudflare_workers_kv" in
  let __resource = { account_id; id; key; namespace_id; value } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_workers_kv __resource);
  ()
