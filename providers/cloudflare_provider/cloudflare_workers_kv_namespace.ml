(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_workers_kv_namespace = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  id : string option; [@option]  (** id *)
  title : string;  (** Title value of the Worker KV Namespace. *)
}
[@@deriving yojson_of]
(** Provides the ability to manage Cloudflare Workers KV Namespace features. *)

let cloudflare_workers_kv_namespace ?id ~account_id ~title
    __resource_id =
  let __resource_type = "cloudflare_workers_kv_namespace" in
  let __resource = { account_id; id; title } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_workers_kv_namespace __resource);
  ()
