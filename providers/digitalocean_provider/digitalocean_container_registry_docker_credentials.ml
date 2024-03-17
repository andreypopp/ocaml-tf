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

type t = {
  credential_expiration_time : string prop;
  docker_credentials : string prop;
  expiry_seconds : float prop;
  id : string prop;
  registry_name : string prop;
  write : bool prop;
}

let digitalocean_container_registry_docker_credentials
    ?expiry_seconds ?id ?write ~registry_name __resource_id =
  let __resource_type =
    "digitalocean_container_registry_docker_credentials"
  in
  let __resource =
    ({ expiry_seconds; id; registry_name; write }
      : digitalocean_container_registry_docker_credentials)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_container_registry_docker_credentials
       __resource);
  let __resource_attributes =
    ({
       credential_expiration_time =
         Prop.computed __resource_type __resource_id
           "credential_expiration_time";
       docker_credentials =
         Prop.computed __resource_type __resource_id
           "docker_credentials";
       expiry_seconds =
         Prop.computed __resource_type __resource_id "expiry_seconds";
       id = Prop.computed __resource_type __resource_id "id";
       registry_name =
         Prop.computed __resource_type __resource_id "registry_name";
       write = Prop.computed __resource_type __resource_id "write";
     }
      : t)
  in
  __resource_attributes
