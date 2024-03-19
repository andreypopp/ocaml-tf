(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type managed = {
  domains : string prop list;
      (** Domains for which a managed SSL certificate will be valid.  Currently,
there can be up to 100 domains in this list. *)
}
[@@deriving yojson_of]
(** Properties relevant to a managed certificate.  These will be used if the
certificate is managed (as indicated by a value of 'MANAGED' in 'type'). *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_managed_ssl_certificate = {
  certificate_id : float prop option; [@option]
      (** The unique identifier for the resource. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.


These are in the same namespace as the managed SSL certificates. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop option; [@option] [@key "type"]
      (** Enum field whose value is always 'MANAGED' - used to signal to the API
which type this is. Default value: MANAGED Possible values: [MANAGED] *)
  managed : managed list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_managed_ssl_certificate *)

let managed ~domains () : managed = { domains }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_managed_ssl_certificate ?certificate_id
    ?description ?id ?name ?project ?type_ ?timeouts ~managed () :
    google_compute_managed_ssl_certificate =
  {
    certificate_id;
    description;
    id;
    name;
    project;
    type_;
    managed;
    timeouts;
  }

type t = {
  certificate_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  subject_alternative_names : string list prop;
  type_ : string prop;
}

let register ?tf_module ?certificate_id ?description ?id ?name
    ?project ?type_ ?timeouts ~managed __resource_id =
  let __resource_type = "google_compute_managed_ssl_certificate" in
  let __resource =
    google_compute_managed_ssl_certificate ?certificate_id
      ?description ?id ?name ?project ?type_ ?timeouts ~managed ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_managed_ssl_certificate __resource);
  let __resource_attributes =
    ({
       certificate_id =
         Prop.computed __resource_type __resource_id "certificate_id";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       expire_time =
         Prop.computed __resource_type __resource_id "expire_time";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       subject_alternative_names =
         Prop.computed __resource_type __resource_id
           "subject_alternative_names";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
