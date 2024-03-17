(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_netapp_backup_vault__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_netapp_backup_vault__timeouts *)

type google_netapp_backup_vault = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Location (region) of the backup vault. *)
  name : string prop;
      (** The resource name of the backup vault. Needs to be unique per location. *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_netapp_backup_vault__timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_backup_vault *)

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let google_netapp_backup_vault ?description ?id ?labels ?project
    ?timeouts ~location ~name __resource_id =
  let __resource_type = "google_netapp_backup_vault" in
  let __resource =
    ({ description; id; labels; location; name; project; timeouts }
      : google_netapp_backup_vault)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_netapp_backup_vault __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       state = Prop.computed __resource_type __resource_id "state";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
