(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~endpoint_attachment_id ~location ~org_id
    ~service_attachment __id =
  let __type = "google_apigee_endpoint_attachment" in
  let __attrs =
    ({
       connection_state =
         Prop.computed __type __id "connection_state";
       endpoint_attachment_id =
         Prop.computed __type __id "endpoint_attachment_id";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       service_attachment =
         Prop.computed __type __id "service_attachment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_endpoint_attachment
        (google_apigee_endpoint_attachment ?id ?timeouts
           ~endpoint_attachment_id ~location ~org_id
           ~service_attachment ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~endpoint_attachment_id
    ~location ~org_id ~service_attachment __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~endpoint_attachment_id ~location ~org_id
      ~service_attachment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
