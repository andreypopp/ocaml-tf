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

let cloudflare_teams_location ?client_default ?id ~account_id ~name
    ~networks __resource_id =
  let __resource_type = "cloudflare_teams_location" in
  let __resource =
    { account_id; client_default; id; name; networks }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_location __resource);
  ()
