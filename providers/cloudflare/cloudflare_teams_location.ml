(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type networks = {
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
  networks : networks list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams Location resource. Teams Locations are
referenced when creating secure web gateway policies.
 *)

let networks ~network () : networks = { network }

let cloudflare_teams_location ?client_default ?id ~account_id ~name
    ~networks () : cloudflare_teams_location =
  { account_id; client_default; id; name; networks }

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

let make ?client_default ?id ~account_id ~name ~networks __id =
  let __type = "cloudflare_teams_location" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       anonymized_logs_enabled =
         Prop.computed __type __id "anonymized_logs_enabled";
       client_default = Prop.computed __type __id "client_default";
       doh_subdomain = Prop.computed __type __id "doh_subdomain";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       ipv4_destination =
         Prop.computed __type __id "ipv4_destination";
       name = Prop.computed __type __id "name";
       policy_ids = Prop.computed __type __id "policy_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_teams_location
        (cloudflare_teams_location ?client_default ?id ~account_id
           ~name ~networks ());
    attrs = __attrs;
  }

let register ?tf_module ?client_default ?id ~account_id ~name
    ~networks __id =
  let (r : _ Tf_core.resource) =
    make ?client_default ?id ~account_id ~name ~networks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
