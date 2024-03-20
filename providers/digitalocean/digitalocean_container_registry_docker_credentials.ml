(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ?expiry_seconds ?id ?write ~registry_name () :
    digitalocean_container_registry_docker_credentials =
  { expiry_seconds; id; registry_name; write }

type t = {
  credential_expiration_time : string prop;
  docker_credentials : string prop;
  expiry_seconds : float prop;
  id : string prop;
  registry_name : string prop;
  write : bool prop;
}

let make ?expiry_seconds ?id ?write ~registry_name __id =
  let __type =
    "digitalocean_container_registry_docker_credentials"
  in
  let __attrs =
    ({
       credential_expiration_time =
         Prop.computed __type __id "credential_expiration_time";
       docker_credentials =
         Prop.computed __type __id "docker_credentials";
       expiry_seconds = Prop.computed __type __id "expiry_seconds";
       id = Prop.computed __type __id "id";
       registry_name = Prop.computed __type __id "registry_name";
       write = Prop.computed __type __id "write";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_container_registry_docker_credentials
        (digitalocean_container_registry_docker_credentials
           ?expiry_seconds ?id ?write ~registry_name ());
    attrs = __attrs;
  }

let register ?tf_module ?expiry_seconds ?id ?write ~registry_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?expiry_seconds ?id ?write ~registry_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
