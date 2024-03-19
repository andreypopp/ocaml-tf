(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_global_settings = {
  global_settings : (string * string prop) list;
      (** global_settings *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_backup_global_settings *)

let aws_backup_global_settings ?id ~global_settings () :
    aws_backup_global_settings =
  { global_settings; id }

type t = {
  global_settings : (string * string) list prop;
  id : string prop;
}

let register ?tf_module ?id ~global_settings __resource_id =
  let __resource_type = "aws_backup_global_settings" in
  let __resource =
    aws_backup_global_settings ?id ~global_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_global_settings __resource);
  let __resource_attributes =
    ({
       global_settings =
         Prop.computed __resource_type __resource_id
           "global_settings";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
