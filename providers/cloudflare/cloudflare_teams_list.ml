(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type t = {
  account_id : string prop;
  description : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
  type_ : string prop;
}

let cloudflare_teams_list ?description ?id ?items ~account_id ~name
    ~type_ __resource_id =
  let __resource_type = "cloudflare_teams_list" in
  let __resource =
    ({ account_id; description; id; items; name; type_ }
      : cloudflare_teams_list)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_list __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       items = Prop.computed __resource_type __resource_id "items";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
