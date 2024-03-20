(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_replica = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_network_uuid : string prop option; [@option]
      (** private_network_uuid *)
  region : string prop option; [@option]  (** region *)
  size : string prop option; [@option]  (** size *)
  storage_size_mib : string prop option; [@option]
      (** storage_size_mib *)
  tags : string prop list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** digitalocean_database_replica *)

let digitalocean_database_replica ?id ?private_network_uuid ?region
    ?size ?storage_size_mib ?tags ~cluster_id ~name () :
    digitalocean_database_replica =
  {
    cluster_id;
    id;
    name;
    private_network_uuid;
    region;
    size;
    storage_size_mib;
    tags;
  }

type t = {
  cluster_id : string prop;
  database : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_network_uuid : string prop;
  private_uri : string prop;
  region : string prop;
  size : string prop;
  storage_size_mib : string prop;
  tags : string list prop;
  uri : string prop;
  user : string prop;
  uuid : string prop;
}

let make ?id ?private_network_uuid ?region ?size ?storage_size_mib
    ?tags ~cluster_id ~name __id =
  let __type = "digitalocean_database_replica" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       database = Prop.computed __type __id "database";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       private_host = Prop.computed __type __id "private_host";
       private_network_uuid =
         Prop.computed __type __id "private_network_uuid";
       private_uri = Prop.computed __type __id "private_uri";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
       storage_size_mib =
         Prop.computed __type __id "storage_size_mib";
       tags = Prop.computed __type __id "tags";
       uri = Prop.computed __type __id "uri";
       user = Prop.computed __type __id "user";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_replica
        (digitalocean_database_replica ?id ?private_network_uuid
           ?region ?size ?storage_size_mib ?tags ~cluster_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?private_network_uuid ?region ?size
    ?storage_size_mib ?tags ~cluster_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?private_network_uuid ?region ?size ?storage_size_mib
      ?tags ~cluster_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
