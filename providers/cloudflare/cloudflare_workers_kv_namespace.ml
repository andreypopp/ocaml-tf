(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~account_id ~title __resource_id =
  let __resource_type = "cloudflare_workers_kv_namespace" in
  let __resource =
    cloudflare_workers_kv_namespace ?id ~account_id ~title ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_workers_kv_namespace __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       title = Prop.computed __resource_type __resource_id "title";
     }
      : t)
  in
  __resource_attributes
