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

let google_compute_region_target_http_proxy ?description ?id ?project
    ?region ?timeouts ~name ~url_map __resource_id =
  let __resource_type = "google_compute_region_target_http_proxy" in
  let __resource =
    { description; id; name; project; region; url_map; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_target_http_proxy __resource);
  ()
