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

type allocated_connections = {
  ingress_port : float prop;  (** ingress_port *)
  psc_uri : string prop;  (** psc_uri *)
}
[@@deriving yojson_of]

type google_beyondcorp_app_gateway = {
  display_name : string prop option; [@option]
      (** An arbitrary user-provided name for the AppGateway. *)
  host_type : string prop option; [@option]
      (** The type of hosting used by the AppGateway. Default value: HOST_TYPE_UNSPECIFIED Possible values: [HOST_TYPE_UNSPECIFIED, GCP_REGIONAL_MIG] *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** ID of the AppGateway. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the AppGateway. *)
  type_ : string prop option; [@option] [@key "type"]
      (** The type of network connectivity used by the AppGateway. Default value: TYPE_UNSPECIFIED Possible values: [TYPE_UNSPECIFIED, TCP_PROXY] *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_beyondcorp_app_gateway *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_beyondcorp_app_gateway ?display_name ?host_type ?id
    ?labels ?project ?region ?type_ ?timeouts ~name () :
    google_beyondcorp_app_gateway =
  {
    display_name;
    host_type;
    id;
    labels;
    name;
    project;
    region;
    type_;
    timeouts;
  }

type t = {
  allocated_connections : allocated_connections list prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  host_type : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  uri : string prop;
}

let register ?tf_module ?display_name ?host_type ?id ?labels ?project
    ?region ?type_ ?timeouts ~name __resource_id =
  let __resource_type = "google_beyondcorp_app_gateway" in
  let __resource =
    google_beyondcorp_app_gateway ?display_name ?host_type ?id
      ?labels ?project ?region ?type_ ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_beyondcorp_app_gateway __resource);
  let __resource_attributes =
    ({
       allocated_connections =
         Prop.computed __resource_type __resource_id
           "allocated_connections";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       host_type =
         Prop.computed __resource_type __resource_id "host_type";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       type_ = Prop.computed __resource_type __resource_id "type";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
