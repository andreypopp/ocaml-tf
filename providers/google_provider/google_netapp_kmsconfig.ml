(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_netapp_kmsconfig__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_kmsconfig__timeouts *)

type google_netapp_kmsconfig = {
  crypto_key_name : string;
      (** Resource name of the KMS key to use. Only regional keys are supported. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}'. *)
  description : string option; [@option]
      (** Description for the CMEK policy. *)
  labels : (string * string) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** Name of the policy location. CMEK policies apply to the whole region. *)
  name : string;  (** Name of the CMEK policy. *)
  timeouts : google_netapp_kmsconfig__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_kmsconfig *)

let google_netapp_kmsconfig ?description ?labels ?timeouts
    ~crypto_key_name ~location ~name __resource_id =
  let __resource_type = "google_netapp_kmsconfig" in
  let __resource =
    {
      crypto_key_name;
      description;
      labels;
      location;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_kmsconfig __resource);
  ()
