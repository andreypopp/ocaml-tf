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

type t = {
  crypto_key_name : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  instructions : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  terraform_labels : (string * string) list prop;
}

let google_netapp_kmsconfig ?description ?id ?labels ?project
    ?timeouts ~crypto_key_name ~location ~name __resource_id =
  let __resource_type = "google_netapp_kmsconfig" in
  let __resource =
    ({
       crypto_key_name;
       description;
       id;
       labels;
       location;
       name;
       project;
       timeouts;
     }
      : google_netapp_kmsconfig)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_kmsconfig __resource);
  let __resource_attributes =
    ({
       crypto_key_name =
         Prop.computed __resource_type __resource_id
           "crypto_key_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       instructions =
         Prop.computed __resource_type __resource_id "instructions";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       service_account =
         Prop.computed __resource_type __resource_id
           "service_account";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
