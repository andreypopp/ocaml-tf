(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_teams_list = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  description : string option; [@option]
      (** The description of the teams list. *)
  items : string list option; [@option]
      (** The items of the teams list. *)
  name : string;  (** Name of the teams list. *)
  type_ : string; [@key "type"]
      (** The teams list type. Available values: `IP`, `SERIAL`, `URL`, `DOMAIN`, `EMAIL`. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams List resource. Teams lists are
referenced when creating secure web gateway policies or device
posture rules.
 *)

let cloudflare_teams_list ?description ?items ~account_id ~name
    ~type_ __resource_id =
  let __resource_type = "cloudflare_teams_list" in
  let __resource = { account_id; description; items; name; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_list __resource);
  ()
