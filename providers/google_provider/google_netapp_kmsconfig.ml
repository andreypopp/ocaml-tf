(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_netapp_kmsconfig__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_kmsconfig__timeouts *)

type google_netapp_kmsconfig = {
  crypto_key_name : string prop;
      (** Resource name of the KMS key to use. Only regional keys are supported. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}'. *)
  description : string prop option; [@option]
      (** Description for the CMEK policy. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Name of the policy location. CMEK policies apply to the whole region. *)
  name : string prop;  (** Name of the CMEK policy. *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_netapp_kmsconfig__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_kmsconfig *)

let google_netapp_kmsconfig ?description ?id ?labels ?project
    ?timeouts ~crypto_key_name ~location ~name __resource_id =
  let __resource_type = "google_netapp_kmsconfig" in
  let __resource =
    {
      crypto_key_name;
      description;
      id;
      labels;
      location;
      name;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_kmsconfig __resource);
  ()
