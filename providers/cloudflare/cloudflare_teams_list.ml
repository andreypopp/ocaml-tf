(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_teams_list = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  description : string prop option; [@option]
      (** The description of the teams list. *)
  id : string prop option; [@option]  (** id *)
  items : string prop list option; [@option]
      (** The items of the teams list. *)
  name : string prop;  (** Name of the teams list. *)
  type_ : string prop; [@key "type"]
      (** The teams list type. Available values: `IP`, `SERIAL`, `URL`, `DOMAIN`, `EMAIL`. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams List resource. Teams lists are
referenced when creating secure web gateway policies or device
posture rules.
 *)

let cloudflare_teams_list ?description ?id ?items ~account_id ~name
    ~type_ () : cloudflare_teams_list =
  { account_id; description; id; items; name; type_ }

type t = {
  account_id : string prop;
  description : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
  type_ : string prop;
}

let make ?description ?id ?items ~account_id ~name ~type_ __id =
  let __type = "cloudflare_teams_list" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       items = Prop.computed __type __id "items";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_teams_list
        (cloudflare_teams_list ?description ?id ?items ~account_id
           ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?items ~account_id ~name
    ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?items ~account_id ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
