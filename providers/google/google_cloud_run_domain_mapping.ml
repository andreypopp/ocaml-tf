(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** Annotations is a key value map stored with a resource that
may be set by external tools to store and retrieve arbitrary metadata. More
info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations

**Note**: The Cloud Run API may add additional annotations that were not provided in your config.
If terraform plan shows a diff where a server-side annotation is added, you can add it to your config
or apply the lifecycle.ignore_changes rule to the metadata.0.annotations field.

**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize
(scope and select) objects. May match selectors of replication controllers
and routes.
More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  namespace : string prop;
      (** In Cloud Run the namespace must be equal to either the
project ID or project number. *)
}
[@@deriving yojson_of]
(** Metadata associated with this DomainMapping. *)

type spec = {
  certificate_mode : string prop option; [@option]
      (** The mode of the certificate. Default value: AUTOMATIC Possible values: [NONE, AUTOMATIC] *)
  force_override : bool prop option; [@option]
      (** If set, the mapping will override any mapping set before this spec was set.
It is recommended that the user leaves this empty to receive an error
warning about a potential conflict and only set it once the respective UI
has given such a warning. *)
  route_name : string prop;
      (** The name of the Cloud Run Service that this DomainMapping applies to.
The route must exist. *)
}
[@@deriving yojson_of]
(** The spec for this DomainMapping. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type status__resource_records = {
  name : string prop;  (** name *)
  rrdata : string prop;  (** rrdata *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type status__conditions = {
  message : string prop;  (** message *)
  reason : string prop;  (** reason *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type status = {
  conditions : status__conditions list;  (** conditions *)
  mapped_route_name : string prop;  (** mapped_route_name *)
  observed_generation : float prop;  (** observed_generation *)
  resource_records : status__resource_records list;
      (** resource_records *)
}
[@@deriving yojson_of]

type google_cloud_run_domain_mapping = {
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The location of the cloud run instance. eg us-central1 *)
  name : string prop;
      (** Name should be a [verified](https://support.google.com/webmasters/answer/9008080) domain *)
  project : string prop option; [@option]  (** project *)
  metadata : metadata list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_run_domain_mapping *)

let metadata ?annotations ?labels ~namespace () : metadata =
  { annotations; labels; namespace }

let spec ?certificate_mode ?force_override ~route_name () : spec =
  { certificate_mode; force_override; route_name }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_cloud_run_domain_mapping ?id ?project ?timeouts ~location
    ~name ~metadata ~spec () : google_cloud_run_domain_mapping =
  { id; location; name; project; metadata; spec; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  status : status list prop;
}

let register ?tf_module ?id ?project ?timeouts ~location ~name
    ~metadata ~spec __resource_id =
  let __resource_type = "google_cloud_run_domain_mapping" in
  let __resource =
    google_cloud_run_domain_mapping ?id ?project ?timeouts ~location
      ~name ~metadata ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_run_domain_mapping __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
