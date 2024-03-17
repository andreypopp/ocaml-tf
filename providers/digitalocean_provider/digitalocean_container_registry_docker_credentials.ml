(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_container_registry_docker_credentials = {
  expiry_seconds : float option; [@option]  (** expiry_seconds *)
  registry_name : string;  (** registry_name *)
  write : bool option; [@option]  (** write *)
}
[@@deriving yojson_of]
(** digitalocean_container_registry_docker_credentials *)

let digitalocean_container_registry_docker_credentials
    ?expiry_seconds ?write ~registry_name __resource_id =
  let __resource_type =
    "digitalocean_container_registry_docker_credentials"
  in
  let __resource = { expiry_seconds; registry_name; write } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_container_registry_docker_credentials
       __resource);
  ()
