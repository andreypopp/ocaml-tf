(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type trust_stores__intermediate_cas = {
  pem_certificate : string prop option; [@option]
      (** PEM intermediate certificate used for building up paths for validation.
Each certificate provided in PEM format may occupy up to 5kB. *)
}
[@@deriving yojson_of]
(** Set of intermediate CA certificates used for the path building phase of chain validation.
The field is currently not supported if trust config is used for the workload certificate feature. *)

type trust_stores__trust_anchors = {
  pem_certificate : string prop option; [@option]
      (** PEM root certificate of the PKI used for validation.
Each certificate provided in PEM format may occupy up to 5kB. *)
}
[@@deriving yojson_of]
(** List of Trust Anchors to be used while performing validation against a given TrustStore. *)

type trust_stores = {
  intermediate_cas : trust_stores__intermediate_cas list;
  trust_anchors : trust_stores__trust_anchors list;
}
[@@deriving yojson_of]
(** Set of trust stores to perform validation against.
This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. *)

type google_certificate_manager_trust_config = {
  description : string prop option; [@option]
      (** One or more paragraphs of text description of a trust config. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of label tags associated with the trust config.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The trust config location. *)
  name : string prop;
      (** A user-defined name of the trust config. Trust config names must be unique globally. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
  trust_stores : trust_stores list;
}
[@@deriving yojson_of]
(** google_certificate_manager_trust_config *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let trust_stores__intermediate_cas ?pem_certificate () :
    trust_stores__intermediate_cas =
  { pem_certificate }

let trust_stores__trust_anchors ?pem_certificate () :
    trust_stores__trust_anchors =
  { pem_certificate }

let trust_stores ~intermediate_cas ~trust_anchors () : trust_stores =
  { intermediate_cas; trust_anchors }

let google_certificate_manager_trust_config ?description ?id ?labels
    ?project ?timeouts ~location ~name ~trust_stores () :
    google_certificate_manager_trust_config =
  {
    description;
    id;
    labels;
    location;
    name;
    project;
    timeouts;
    trust_stores;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?timeouts ~location ~name
    ~trust_stores __id =
  let __type = "google_certificate_manager_trust_config" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_certificate_manager_trust_config
        (google_certificate_manager_trust_config ?description ?id
           ?labels ?project ?timeouts ~location ~name ~trust_stores
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~location ~name ~trust_stores __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~location ~name
      ~trust_stores __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
