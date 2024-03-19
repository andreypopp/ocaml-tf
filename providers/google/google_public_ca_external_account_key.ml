(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_public_ca_external_account_key = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** Location for the externalAccountKey. Currently only 'global' is supported. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_public_ca_external_account_key *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_public_ca_external_account_key ?id ?location ?project
    ?timeouts () : google_public_ca_external_account_key =
  { id; location; project; timeouts }

type t = {
  b64_mac_key : string prop;
  id : string prop;
  key_id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let register ?tf_module ?id ?location ?project ?timeouts
    __resource_id =
  let __resource_type = "google_public_ca_external_account_key" in
  let __resource =
    google_public_ca_external_account_key ?id ?location ?project
      ?timeouts ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_public_ca_external_account_key __resource);
  let __resource_attributes =
    ({
       b64_mac_key =
         Prop.computed __resource_type __resource_id "b64_mac_key";
       id = Prop.computed __resource_type __resource_id "id";
       key_id = Prop.computed __resource_type __resource_id "key_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
