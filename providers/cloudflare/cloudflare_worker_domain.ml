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

let register ?tf_module ?environment ?id ~account_id ~hostname
    ~service ~zone_id __resource_id =
  let __resource_type = "cloudflare_worker_domain" in
  let __resource =
    cloudflare_worker_domain ?environment ?id ~account_id ~hostname
      ~service ~zone_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_domain __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       environment =
         Prop.computed __resource_type __resource_id "environment";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       service =
         Prop.computed __resource_type __resource_id "service";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
