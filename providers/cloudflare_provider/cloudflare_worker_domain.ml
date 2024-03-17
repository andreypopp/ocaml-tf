(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_worker_domain = {
  account_id : string;
      (** The account identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  environment : string option; [@option]
      (** The name of the Worker environment. Defaults to `production`. *)
  hostname : string;  (** Hostname of the Worker Domain. *)
  service : string;
      (** Name of worker script to attach the domain to. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Creates a Worker Custom Domain. *)

let cloudflare_worker_domain ?environment ~account_id ~hostname
    ~service ~zone_id __resource_id =
  let __resource_type = "cloudflare_worker_domain" in
  let __resource =
    { account_id; environment; hostname; service; zone_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_domain __resource);
  ()
