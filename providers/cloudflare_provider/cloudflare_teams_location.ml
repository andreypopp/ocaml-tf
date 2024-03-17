(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_teams_location__networks = {
  id : string prop;  (** id *)
  network : string prop;
      (** CIDR notation representation of the network IP. *)
}
[@@deriving yojson_of]
(** The networks CIDRs that comprise the location. *)

type cloudflare_teams_location = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  client_default : bool prop option; [@option]
      (** Indicator that this is the default location. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Name of the teams location. *)
  networks : cloudflare_teams_location__networks list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams Location resource. Teams Locations are
referenced when creating secure web gateway policies.
 *)

type t = {
  account_id : string prop;
  anonymized_logs_enabled : bool prop;
  client_default : bool prop;
  doh_subdomain : string prop;
  id : string prop;
  ip : string prop;
  ipv4_destination : string prop;
  name : string prop;
  policy_ids : string list prop;
}

let cloudflare_teams_location ?client_default ?id ~account_id ~name
    ~networks __resource_id =
  let __resource_type = "cloudflare_teams_location" in
  let __resource =
    ({ account_id; client_default; id; name; networks }
      : cloudflare_teams_location)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_location __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       anonymized_logs_enabled =
         Prop.computed __resource_type __resource_id
           "anonymized_logs_enabled";
       client_default =
         Prop.computed __resource_type __resource_id "client_default";
       doh_subdomain =
         Prop.computed __resource_type __resource_id "doh_subdomain";
       id = Prop.computed __resource_type __resource_id "id";
       ip = Prop.computed __resource_type __resource_id "ip";
       ipv4_destination =
         Prop.computed __resource_type __resource_id
           "ipv4_destination";
       name = Prop.computed __resource_type __resource_id "name";
       policy_ids =
         Prop.computed __resource_type __resource_id "policy_ids";
     }
      : t)
  in
  __resource_attributes
