(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_region_settings = {
  id : string prop option; [@option]  (** id *)
  resource_type_management_preference :
    (string * bool prop) list option;
      [@option]
      (** resource_type_management_preference *)
  resource_type_opt_in_preference : (string * bool prop) list;
      (** resource_type_opt_in_preference *)
}
[@@deriving yojson_of]
(** aws_backup_region_settings *)

type t = {
  id : string prop;
  resource_type_management_preference : (string * bool) list prop;
  resource_type_opt_in_preference : (string * bool) list prop;
}

let aws_backup_region_settings ?id
    ?resource_type_management_preference
    ~resource_type_opt_in_preference __resource_id =
  let __resource_type = "aws_backup_region_settings" in
  let __resource =
    ({
       id;
       resource_type_management_preference;
       resource_type_opt_in_preference;
     }
      : aws_backup_region_settings)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_region_settings __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       resource_type_management_preference =
         Prop.computed __resource_type __resource_id
           "resource_type_management_preference";
       resource_type_opt_in_preference =
         Prop.computed __resource_type __resource_id
           "resource_type_opt_in_preference";
     }
      : t)
  in
  __resource_attributes
