(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_beyondcorp_app_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_beyondcorp_app_gateway__timeouts *)

type google_beyondcorp_app_gateway__allocated_connections = {
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
  timeouts : google_beyondcorp_app_gateway__timeouts option;
}
[@@deriving yojson_of]
(** google_beyondcorp_app_gateway *)

let google_beyondcorp_app_gateway ?display_name ?host_type ?id
    ?labels ?project ?region ?type_ ?timeouts ~name __resource_id =
  let __resource_type = "google_beyondcorp_app_gateway" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_beyondcorp_app_gateway __resource);
  ()
