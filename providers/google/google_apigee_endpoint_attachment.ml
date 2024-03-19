(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apigee_endpoint_attachment = {
  endpoint_attachment_id : string prop;
      (** ID of the endpoint attachment. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** Location of the endpoint attachment. *)
  org_id : string prop;
      (** The Apigee Organization associated with the Apigee instance,
in the format 'organizations/{{org_name}}'. *)
  service_attachment : string prop;
      (** Format: projects/*/regions/*/serviceAttachments/* *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_endpoint_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_apigee_endpoint_attachment ?id ?timeouts
    ~endpoint_attachment_id ~location ~org_id ~service_attachment ()
    : google_apigee_endpoint_attachment =
  {
    endpoint_attachment_id;
    id;
    location;
    org_id;
    service_attachment;
    timeouts;
  }

type t = {
  connection_state : string prop;
  endpoint_attachment_id : string prop;
  host : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  org_id : string prop;
  service_attachment : string prop;
}

let register ?tf_module ?id ?timeouts ~endpoint_attachment_id
    ~location ~org_id ~service_attachment __resource_id =
  let __resource_type = "google_apigee_endpoint_attachment" in
  let __resource =
    google_apigee_endpoint_attachment ?id ?timeouts
      ~endpoint_attachment_id ~location ~org_id ~service_attachment
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_endpoint_attachment __resource);
  let __resource_attributes =
    ({
       connection_state =
         Prop.computed __resource_type __resource_id
           "connection_state";
       endpoint_attachment_id =
         Prop.computed __resource_type __resource_id
           "endpoint_attachment_id";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       service_attachment =
         Prop.computed __resource_type __resource_id
           "service_attachment";
     }
      : t)
  in
  __resource_attributes
