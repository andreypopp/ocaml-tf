(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_ssl_certificate = {
  certificate : string prop;
      (** The certificate in PEM format.
The certificate chain must be no greater than 5 certs long.
The chain must include at least one intermediate cert. *)
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
  name_prefix : string prop option; [@option]
      (** Creates a unique name beginning with the specified prefix. Conflicts with name. *)
  private_key : string prop;
      (** The write-only private key in PEM format. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_ssl_certificate *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_ssl_certificate ?description ?id ?name
    ?name_prefix ?project ?timeouts ~certificate ~private_key () :
    google_compute_ssl_certificate =
  {
    certificate;
    description;
    id;
    name;
    name_prefix;
    private_key;
    project;
    timeouts;
  }

type t = {
  certificate : string prop;
  certificate_id : float prop;
  creation_timestamp : string prop;
  description : string prop;
  expire_time : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  private_key : string prop;
  project : string prop;
  self_link : string prop;
}

let register ?tf_module ?description ?id ?name ?name_prefix ?project
    ?timeouts ~certificate ~private_key __resource_id =
  let __resource_type = "google_compute_ssl_certificate" in
  let __resource =
    google_compute_ssl_certificate ?description ?id ?name
      ?name_prefix ?project ?timeouts ~certificate ~private_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_ssl_certificate __resource);
  let __resource_attributes =
    ({
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
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
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       project =
         Prop.computed __resource_type __resource_id "project";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
     }
      : t)
  in
  __resource_attributes
