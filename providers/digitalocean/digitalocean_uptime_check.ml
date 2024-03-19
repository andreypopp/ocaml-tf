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
    () : digitalocean_uptime_check =
  { enabled; name; regions; target; type_ }

type t = {
  enabled : bool prop;
  id : string prop;
  name : string prop;
  regions : string list prop;
  target : string prop;
  type_ : string prop;
}

let register ?tf_module ?enabled ?regions ?type_ ~name ~target
    __resource_id =
  let __resource_type = "digitalocean_uptime_check" in
  let __resource =
    digitalocean_uptime_check ?enabled ?regions ?type_ ~name ~target
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_uptime_check __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       regions =
         Prop.computed __resource_type __resource_id "regions";
       target = Prop.computed __resource_type __resource_id "target";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
