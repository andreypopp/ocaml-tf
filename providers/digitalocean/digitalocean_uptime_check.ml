(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?enabled ?regions ?type_ ~name ~target __id =
  let __type = "digitalocean_uptime_check" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       regions = Prop.computed __type __id "regions";
       target = Prop.computed __type __id "target";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_uptime_check
        (digitalocean_uptime_check ?enabled ?regions ?type_ ~name
           ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?regions ?type_ ~name ~target __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?regions ?type_ ~name ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
