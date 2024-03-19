(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?user ~cluster_id ~db_name ~mode ~name
    ~size __resource_id =
  let __resource_type = "digitalocean_database_connection_pool" in
  let __resource =
    digitalocean_database_connection_pool ?id ?user ~cluster_id
      ~db_name ~mode ~name ~size ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_connection_pool __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       db_name =
         Prop.computed __resource_type __resource_id "db_name";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       mode = Prop.computed __resource_type __resource_id "mode";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       port = Prop.computed __resource_type __resource_id "port";
       private_host =
         Prop.computed __resource_type __resource_id "private_host";
       private_uri =
         Prop.computed __resource_type __resource_id "private_uri";
       size = Prop.computed __resource_type __resource_id "size";
       uri = Prop.computed __resource_type __resource_id "uri";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes
