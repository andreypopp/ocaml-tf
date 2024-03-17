(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_region_settings = {
  id : string option; [@option]  (** id *)
  resource_type_management_preference : (string * bool) list option;
      [@option]
      (** resource_type_management_preference *)
  resource_type_opt_in_preference : (string * bool) list;
      (** resource_type_opt_in_preference *)
}
[@@deriving yojson_of]
(** aws_backup_region_settings *)

let aws_backup_region_settings ?id
    ?resource_type_management_preference
    ~resource_type_opt_in_preference __resource_id =
  let __resource_type = "aws_backup_region_settings" in
  let __resource =
    {
      id;
      resource_type_management_preference;
      resource_type_opt_in_preference;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_region_settings __resource);
  ()
