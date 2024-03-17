(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_region_target_http_proxy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_region_target_http_proxy__timeouts *)

type google_compute_region_target_http_proxy = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The Region in which the created target https proxy should reside.
If it is not provided, the provider region is used. *)
  url_map : string prop;
      (** A reference to the RegionUrlMap resource that defines the mapping from URL
to the BackendService. *)
  timeouts : google_compute_region_target_http_proxy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_target_http_proxy *)

type t = {
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_id : float prop;
  region : string prop;
  self_link : string prop;
  url_map : string prop;
}

let google_compute_region_target_http_proxy ?description ?id ?project
    ?region ?timeouts ~name ~url_map __resource_id =
  let __resource_type = "google_compute_region_target_http_proxy" in
  let __resource =
    ({ description; id; name; project; region; url_map; timeouts }
      : google_compute_region_target_http_proxy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_target_http_proxy __resource);
  let __resource_attributes =
    ({
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       proxy_id =
         Prop.computed __resource_type __resource_id "proxy_id";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       url_map =
         Prop.computed __resource_type __resource_id "url_map";
     }
      : t)
  in
  __resource_attributes
