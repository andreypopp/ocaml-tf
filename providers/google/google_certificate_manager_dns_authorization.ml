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

type dns_resource_record = {
  data : string prop;  (** data *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_certificate_manager_dns_authorization = {
  description : string prop option; [@option]
      (** A human-readable description of the resource. *)
  domain : string prop;
      (** A domain which is being authorized. A DnsAuthorization resource covers a
single domain and its wildcard, e.g. authorization for example.com can
be used to issue certificates for example.com and *.example.com. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of label tags associated with the DNS Authorization resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** The Certificate Manager location. If not specified, global is used. *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop option; [@option] [@key "type"]
      (** type of DNS authorization. If unset during the resource creation, FIXED_RECORD will
be used for global resources, and PER_PROJECT_RECORD will be used for other locations.

FIXED_RECORD DNS authorization uses DNS-01 validation method

PER_PROJECT_RECORD DNS authorization allows for independent management
of Google-managed certificates with DNS authorization across multiple
projects. Possible values: [FIXED_RECORD, PER_PROJECT_RECORD] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_certificate_manager_dns_authorization *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_certificate_manager_dns_authorization ?description ?id
    ?labels ?location ?project ?type_ ?timeouts ~domain ~name () :
    google_certificate_manager_dns_authorization =
  {
    description;
    domain;
    id;
    labels;
    location;
    name;
    project;
    type_;
    timeouts;
  }

type t = {
  description : string prop;
  dns_resource_record : dns_resource_record list prop;
  domain : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?description ?id ?labels ?location ?project
    ?type_ ?timeouts ~domain ~name __resource_id =
  let __resource_type =
    "google_certificate_manager_dns_authorization"
  in
  let __resource =
    google_certificate_manager_dns_authorization ?description ?id
      ?labels ?location ?project ?type_ ?timeouts ~domain ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_dns_authorization
       __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       dns_resource_record =
         Prop.computed __resource_type __resource_id
           "dns_resource_record";
       domain = Prop.computed __resource_type __resource_id "domain";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
