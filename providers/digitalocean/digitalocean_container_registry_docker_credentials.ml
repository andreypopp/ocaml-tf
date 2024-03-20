(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_container_registry_docker_credentials = {
  expiry_seconds : float prop option; [@option]
  id : string prop option; [@option]
  registry_name : string prop;
  write : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : digitalocean_container_registry_docker_credentials) -> ()

let yojson_of_digitalocean_container_registry_docker_credentials =
  (function
   | {
       expiry_seconds = v_expiry_seconds;
       id = v_id;
       registry_name = v_registry_name;
       write = v_write;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_write with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "write", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_name in
         ("registry_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiry_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expiry_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_container_registry_docker_credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_container_registry_docker_credentials

[@@@deriving.end]

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
