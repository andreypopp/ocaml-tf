(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_connection_pool = {
  cluster_id : string prop;  (** cluster_id *)
  db_name : string prop;  (** db_name *)
  id : string prop option; [@option]  (** id *)
  mode : string prop;  (** mode *)
  name : string prop;  (** name *)
  size : float prop;  (** size *)
  user : string prop option; [@option]  (** user *)
}
[@@deriving yojson_of]
(** digitalocean_database_connection_pool *)

let digitalocean_database_connection_pool ?id ?user ~cluster_id
    ~db_name ~mode ~name ~size () :
    digitalocean_database_connection_pool =
  { cluster_id; db_name; id; mode; name; size; user }

type t = {
  cluster_id : string prop;
  db_name : string prop;
  host : string prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_uri : string prop;
  size : float prop;
  uri : string prop;
  user : string prop;
}

let make ?id ?user ~cluster_id ~db_name ~mode ~name ~size __id =
  let __type = "digitalocean_database_connection_pool" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       db_name = Prop.computed __type __id "db_name";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       private_host = Prop.computed __type __id "private_host";
       private_uri = Prop.computed __type __id "private_uri";
       size = Prop.computed __type __id "size";
       uri = Prop.computed __type __id "uri";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_connection_pool
        (digitalocean_database_connection_pool ?id ?user ~cluster_id
           ~db_name ~mode ~name ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?user ~cluster_id ~db_name ~mode ~name
    ~size __id =
  let (r : _ Tf_core.resource) =
    make ?id ?user ~cluster_id ~db_name ~mode ~name ~size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
