(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_beyondcorp_app_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_beyondcorp_app_gateway__timeouts *)

type google_beyondcorp_app_gateway__allocated_connections = {
  ingress_port : float;  (** ingress_port *)
  psc_uri : string;  (** psc_uri *)
}
[@@deriving yojson_of]

type google_beyondcorp_app_gateway = {
  display_name : string option; [@option]
      (** An arbitrary user-provided name for the AppGateway. *)
  host_type : string option; [@option]
      (** The type of hosting used by the AppGateway. Default value: HOST_TYPE_UNSPECIFIED Possible values: [HOST_TYPE_UNSPECIFIED, GCP_REGIONAL_MIG] *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** ID of the AppGateway. *)
  region : string option; [@option]
      (** The region of the AppGateway. *)
  type_ : string option; [@option] [@key "type"]
      (** The type of network connectivity used by the AppGateway. Default value: TYPE_UNSPECIFIED Possible values: [TYPE_UNSPECIFIED, TCP_PROXY] *)
  timeouts : google_beyondcorp_app_gateway__timeouts option;
}
[@@deriving yojson_of]
(** google_beyondcorp_app_gateway *)

let google_beyondcorp_app_gateway ?display_name ?host_type ?labels
    ?region ?type_ ?timeouts ~name __resource_id =
  let __resource_type = "google_beyondcorp_app_gateway" in
  let __resource =
    {
      display_name;
      host_type;
      labels;
      name;
      region;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_beyondcorp_app_gateway __resource);
  ()
