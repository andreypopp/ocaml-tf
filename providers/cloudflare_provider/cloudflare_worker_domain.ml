(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    ~service ~zone_id __resource_id =
  let __resource_type = "cloudflare_worker_domain" in
  let __resource =
    { account_id; environment; hostname; id; service; zone_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_domain __resource);
  ()
