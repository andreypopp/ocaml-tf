(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_project__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** digitalocean_project__timeouts *)

type digitalocean_project = {
  description : string prop option; [@option]
      (** the description of the project *)
  environment : string prop option; [@option]
      (** the environment of the project's resources *)
  id : string prop option; [@option]  (** id *)
  is_default : bool prop option; [@option]
      (** determine if the project is the default or not. *)
  name : string prop;  (** the human-readable name for the project *)
  purpose : string prop option; [@option]
      (** the purpose of the project *)
  resources : string prop list option; [@option]
      (** the resources associated with the project *)
  timeouts : digitalocean_project__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_project *)

type t = {
  created_at : string prop;
  description : string prop;
  environment : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  owner_id : float prop;
  owner_uuid : string prop;
  purpose : string prop;
  resources : string list prop;
  updated_at : string prop;
}

let digitalocean_project ?description ?environment ?id ?is_default
    ?purpose ?resources ?timeouts ~name __resource_id =
  let __resource_type = "digitalocean_project" in
  let __resource =
    ({
       description;
       environment;
       id;
       is_default;
       name;
       purpose;
       resources;
       timeouts;
     }
      : digitalocean_project)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_project __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       description =
         Prop.computed __resource_type __resource_id "description";
       environment =
         Prop.computed __resource_type __resource_id "environment";
       id = Prop.computed __resource_type __resource_id "id";
       is_default =
         Prop.computed __resource_type __resource_id "is_default";
       name = Prop.computed __resource_type __resource_id "name";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       owner_uuid =
         Prop.computed __resource_type __resource_id "owner_uuid";
       purpose =
         Prop.computed __resource_type __resource_id "purpose";
       resources =
         Prop.computed __resource_type __resource_id "resources";
       updated_at =
         Prop.computed __resource_type __resource_id "updated_at";
     }
      : t)
  in
  __resource_attributes
