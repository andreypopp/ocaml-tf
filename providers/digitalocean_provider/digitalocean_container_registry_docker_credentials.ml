(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_container_registry_docker_credentials = {
  expiry_seconds : float prop option; [@option]
      (** expiry_seconds *)
  id : string prop option; [@option]  (** id *)
  registry_name : string prop;  (** registry_name *)
  write : bool prop option; [@option]  (** write *)
}
[@@deriving yojson_of]
(** digitalocean_container_registry_docker_credentials *)

let digitalocean_container_registry_docker_credentials
    ?expiry_seconds ?id ?write ~registry_name __resource_id =
  let __resource_type =
    "digitalocean_container_registry_docker_credentials"
  in
  let __resource = { expiry_seconds; id; registry_name; write } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_container_registry_docker_credentials
       __resource);
  ()
