(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_project__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** digitalocean_project__timeouts *)

type digitalocean_project = {
  description : string option; [@option]
      (** the description of the project *)
  environment : string option; [@option]
      (** the environment of the project's resources *)
  id : string option; [@option]  (** id *)
  is_default : bool option; [@option]
      (** determine if the project is the default or not. *)
  name : string;  (** the human-readable name for the project *)
  purpose : string option; [@option]
      (** the purpose of the project *)
  resources : string list option; [@option]
      (** the resources associated with the project *)
  timeouts : digitalocean_project__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_project *)

let digitalocean_project ?description ?environment ?id ?is_default
    ?purpose ?resources ?timeouts ~name __resource_id =
  let __resource_type = "digitalocean_project" in
  let __resource =
    {
      description;
      environment;
      id;
      is_default;
      name;
      purpose;
      resources;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_project __resource);
  ()
