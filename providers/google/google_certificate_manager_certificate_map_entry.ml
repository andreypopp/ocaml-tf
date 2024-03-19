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

type google_certificate_manager_certificate_map_entry = {
  certificates : string prop list;
      (** A set of Certificates defines for the given hostname.
There can be defined up to fifteen certificates in each Certificate Map Entry.
Each certificate must match pattern projects/*/locations/*/certificates/*. *)
  description : string prop option; [@option]
      (** A human-readable description of the resource. *)
  hostname : string prop option; [@option]
      (** A Hostname (FQDN, e.g. example.com) or a wildcard hostname expression \(\*.example.com)
for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for
selecting a proper certificate. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of labels associated with a Certificate Map Entry.
An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  map : string prop;
      (** A map entry that is inputted into the cetrificate map *)
  matcher : string prop option; [@option]
      (** A predefined matcher for particular cases, other than SNI selection *)
  name : string prop;
      (** A user-defined name of the Certificate Map Entry. Certificate Map Entry
names must be unique globally and match pattern
'projects/*/locations/*/certificateMaps/*/certificateMapEntries/*' *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_certificate_manager_certificate_map_entry *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_certificate_manager_certificate_map_entry ?description
    ?hostname ?id ?labels ?matcher ?project ?timeouts ~certificates
    ~map ~name () : google_certificate_manager_certificate_map_entry
    =
  {
    certificates;
    description;
    hostname;
    id;
    labels;
    map;
    matcher;
    name;
    project;
    timeouts;
  }

type t = {
  certificates : string list prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  hostname : string prop;
  id : string prop;
  labels : (string * string) list prop;
  map : string prop;
  matcher : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let register ?tf_module ?description ?hostname ?id ?labels ?matcher
    ?project ?timeouts ~certificates ~map ~name __resource_id =
  let __resource_type =
    "google_certificate_manager_certificate_map_entry"
  in
  let __resource =
    google_certificate_manager_certificate_map_entry ?description
      ?hostname ?id ?labels ?matcher ?project ?timeouts ~certificates
      ~map ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_certificate_manager_certificate_map_entry
       __resource);
  let __resource_attributes =
    ({
       certificates =
         Prop.computed __resource_type __resource_id "certificates";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       map = Prop.computed __resource_type __resource_id "map";
       matcher =
         Prop.computed __resource_type __resource_id "matcher";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
