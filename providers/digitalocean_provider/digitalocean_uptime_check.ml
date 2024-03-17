(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_uptime_check = {
  enabled : bool prop option; [@option]
      (** A boolean value indicating whether the check is enabled/disabled. *)
  name : string prop;
      (** A human-friendly display name for the check. *)
  regions : string prop list option; [@option]
      (** An array containing the selected regions to perform healthchecks from. *)
  target : string prop;
      (** The endpoint to perform healthchecks on. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of health check to perform. Enum: 'ping' 'http' 'https' *)
}
[@@deriving yojson_of]
(** digitalocean_uptime_check *)

let digitalocean_uptime_check ?enabled ?regions ?type_ ~name ~target
    __resource_id =
  let __resource_type = "digitalocean_uptime_check" in
  let __resource = { enabled; name; regions; target; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_uptime_check __resource);
  ()
