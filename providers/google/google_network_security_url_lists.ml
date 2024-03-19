(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_network_security_url_lists = {
  description : string prop option; [@option]
      (** Free-text description of the resource. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the url lists. *)
  name : string prop;
      (** Short name of the UrlList resource to be created.
This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'. *)
  project : string prop option; [@option]  (** project *)
  values : string prop list;  (** FQDNs and URLs. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_url_lists *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_url_lists ?description ?id ?project
    ?timeouts ~location ~name ~values () :
    google_network_security_url_lists =
  { description; id; location; name; project; values; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
  values : string list prop;
}

let register ?tf_module ?description ?id ?project ?timeouts ~location
    ~name ~values __resource_id =
  let __resource_type = "google_network_security_url_lists" in
  let __resource =
    google_network_security_url_lists ?description ?id ?project
      ?timeouts ~location ~name ~values ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_security_url_lists __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
       values = Prop.computed __resource_type __resource_id "values";
     }
      : t)
  in
  __resource_attributes
